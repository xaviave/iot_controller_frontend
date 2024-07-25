import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:iot_controller/src/blocs/led_mode.dart";
import "package:iot_controller/src/blocs/periodic_task.dart";
import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/products/led/led_panel.dart";
import "package:iot_controller/src/models/products/led/modes/led_mode.dart";
import "package:iot_controller/src/ui/celery_task/periodic_task_create_view.dart";
import "package:iot_controller/src/ui/celery_task/periodic_task_list_view.dart";
import "package:iot_controller/src/ui/products/base_product/update_ip_alert_view.dart";
import "package:iot_controller/src/ui/products/led/modes/led_mode_list_view.dart";
import "package:iot_controller/src/ui/settings/settings_view.dart";
import "package:iot_controller/src/ui/utils/capitalize.dart";
import "package:iot_controller/src/ui/utils/on_off_button.dart";
import "package:iot_controller/src/ui/utils/popup/delete_popup.dart";
import "package:iot_controller/src/ui/utils/popup/refresh_popup.dart";

import "modes/led_mode_details_view.dart";

class LedPanelDetailsView extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;

  const LedPanelDetailsView({super.key, required this.callbackUpdateProject});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late Color colorBrightness;
  late double productBrightness;
  late Function(BaseProduct) callbackUpdateProject;

  Future<bool> refreshLedPanel(BuildContext context) async {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(RetrieveBaseProductEvent(
        product: state.product!, products: state.products));
    return true;
  }

  void callbackDeleteLedPanel(BuildContext context) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(DestroyBaseProductEvent(
        product: state.product!, products: state.products));
    context.pushNamed("project_detail");
  }

  void updateProduct(BuildContext context, Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.product!, fields: fields, products: state.products));
  }

  void updatePeriodicTask(BuildContext context, Map<String, dynamic> fields) {
    PeriodicTaskState state =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

    context.read<PeriodicTaskGRPCBloc>().add(PartialUpdatePeriodicTaskEvent(
        task: state.task!, fields: fields, tasks: state.tasks));
  }

  void setLedMode(LedMode mode) {
    LedModeState ledModeState = BlocProvider.of<LedModeGRPCBloc>(context).state;

    context
        .read<LedModeGRPCBloc>()
        .add(GetLedModeEvent(mode: mode, modes: ledModeState.modes));
  }

  @override
  void initState() {
    super.initState();
    callbackUpdateProject = widget.callbackUpdateProject;

    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;
    productBrightness = (state.product! as LedPanel).brightness;
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, productBrightness)!;
  }

  Widget headerView(BuildContext context, BaseProductState state,
      String titleView, Widget bodyView, Widget? buttons) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            titleView,
            style: const TextStyle(fontSize: 28),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (state.products == []) {
                context
                    .read<BaseProductGRPCBloc>()
                    .add(GetBaseProductListEvent([]));
              }
              context.pop("/product_detail");
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.push("/settings");
              },
            ),
          ],
        ),
        body: bodyView,
        floatingActionButton: buttons ?? const SizedBox());
  }

  Widget errorBuild(BuildContext context, BaseProductState errorState) {
    return headerView(
      context,
      errorState,
      "Error Led panel",
      Center(child: Text(errorState.message)),
      null,
    );
  }

  Widget ledPanelBuild(BuildContext context, BaseProductState state) {
    final LedPanel product = state.product! as LedPanel;

    setLedMode(product.mode);
    return headerView(
        context,
        state,
        product.name.capitalize,
        SingleChildScrollView(
          child: Column(
            children: [
              // add categories
              OnOffButton(
                status: product.status,
                callbackUpdateStatus: updateProduct,
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text(
                              "Change Product IP",
                              textAlign: TextAlign.center,
                            ),
                            insetPadding: const EdgeInsets.all(50),
                            content: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: IpUpdateAlertView(
                                  ipAddress: product.ipAddress,
                                  ipPort: product.ipPort,
                                  callbackUpdateIp: updateProduct,
                                )),
                            actions: [
                              TextButton(
                                child: const Text("Cancel"),
                                onPressed: () {
                                  setLedMode(product.mode);
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ));
                },
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Update Product IP",
                      style: TextStyle(fontSize: 28),
                    )),
              ),
              Slider(
                  min: 0,
                  max: 1,
                  activeColor: colorBrightness,
                  inactiveColor: Colors.grey,
                  thumbColor: colorBrightness,
                  value: productBrightness,
                  onChanged: (value) {
                    setState(() {
                      productBrightness =
                          double.parse(value.toStringAsFixed(2));
                      colorBrightness = Color.lerp(
                        Colors.black,
                        Colors.yellow,
                        productBrightness,
                      )!;
                    });
                  },
                  onChangeEnd: (_) {
                    updateProduct(context, {"brightness": productBrightness});
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(product.mode.name.capitalize,
                          style: const TextStyle(fontSize: 28))),
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => PopScope(
                              onPopInvokedWithResult: (bool didPop, _) =>
                                  setLedMode(product.mode),
                              child: AlertDialog(
                                  title: const Text("Change Mode"),
                                  insetPadding: const EdgeInsets.all(50),
                                  content: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: LedModeListView(
                                        callbackUpdateProductLedMode:
                                            updateProduct,
                                      )),
                                  actions: [
                                    TextButton(
                                        child: const Text("Cancel"),
                                        onPressed: () {
                                          setLedMode(product.mode);
                                          Navigator.of(context).pop();
                                        })
                                  ])));
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(
                          "Update mode",
                          style: TextStyle(fontSize: 28),
                        )),
                  )
                ],
              ),
              const SizedBox(height: 10),
              LedModeDetailsView(
                callbackUpdateProductLedMode: updateProduct,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // should find and print the product tasks
                  // Container(
                  //     margin: const EdgeInsets.all(10),
                  //     child: Text(product.mode.name.capitalize,
                  //         style: const TextStyle(fontSize: 28))),
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => PopScope(
                              onPopInvokedWithResult: (bool didPop, _) =>
                                  // setLedMode(product.mode),
                                  {},
                              child: AlertDialog(
                                  title: const Text("Change periodic task"),
                                  insetPadding: const EdgeInsets.all(50),
                                  content: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: PeriodicTaskListView(
                                          onlyBody: true,
                                          callbackUpdateProductPeriodicTask:
                                              updateProduct)),
                                  actions: [
                                    TextButton(
                                        child: const Text("Cancel"),
                                        onPressed: () {
                                          setLedMode(product.mode);
                                          Navigator.of(context).pop();
                                        })
                                  ])));
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(
                          "Update periodic tasks",
                          style: TextStyle(fontSize: 28),
                        )),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // should find and print the product tasks
                  // Container(
                  //     margin: const EdgeInsets.all(10),
                  //     child: Text(product.mode.name.capitalize,
                  //         style: const TextStyle(fontSize: 28))),
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => PopScope(
                              onPopInvokedWithResult: (bool didPop, _) =>
                                  // setLedMode(product.mode),
                                  {},
                              child: AlertDialog(
                                  title: const Text("Create periodic task"),
                                  insetPadding: const EdgeInsets.all(50),
                                  content: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: PeriodicTaskForm()),
                                  actions: [
                                    TextButton(
                                        child: const Text("Cancel"),
                                        onPressed: () {
                                          setLedMode(product.mode);
                                          Navigator.of(context).pop();
                                        })
                                  ])));
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(
                          "Create periodic task",
                          style: TextStyle(fontSize: 28),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DeletePopup(
                name: "led_panel",
                objectName: product.name,
                heroTag: "led_panel_delete_button",
                deleteCallBack: callbackDeleteLedPanel,
                onPressedCallBack: () {}),
            const SizedBox(height: 10),
            RefreshPopup(
              heroTag: "led_panel_refresh_button",
              onPressedCallBack: refreshLedPanel,
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseProductGRPCBloc, BaseProductState>(
        builder: (context, state) {
      if (state is BaseProductListInitial || state is BaseProductLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetBaseProductSuccess ||
          state is RetrieveBaseProductSuccess ||
          state is UpdateBaseProductSuccess ||
          state is CreateBaseProductSuccess) {
        return ledPanelBuild(context, state);
      } else {
        return errorBuild(context, state);
      }
    });
  }
}
