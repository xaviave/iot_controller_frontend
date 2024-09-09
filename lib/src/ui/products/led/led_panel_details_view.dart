import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:interactive_slider/interactive_slider.dart";
import "package:iot_controller/src/blocs/led_mode.dart";
import "package:iot_controller/src/blocs/periodic_task.dart";
import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/products/led/led_panel.dart";
import "package:iot_controller/src/models/products/led/modes/led_mode.dart";
import "package:iot_controller/src/ui/celery_task/periodic_task_list_view.dart";
import "package:iot_controller/src/ui/customColors.dart";
import "package:iot_controller/src/ui/products/base_product/update_ip_alert_view.dart";
import "package:iot_controller/src/ui/products/led/modes/led_mode_list_view.dart";
import "package:iot_controller/src/ui/utils/capitalize.dart";
import "package:iot_controller/src/ui/utils/on_off_button.dart";

import "modes/led_mode_details_view.dart";

class LedPanelDetailsView extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;

  const LedPanelDetailsView({super.key, required this.callbackUpdateProject});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late InteractiveSliderController _controllerBrightness;
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

    print(fields);
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
    _controllerBrightness =
        InteractiveSliderController((state.product! as LedPanel).brightness);
  }

  Widget decorationBlock(BuildContext context, Widget bodyView) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
        decoration: BoxDecoration(
            color: customColors.lightBackground,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(padding: const EdgeInsets.all(16), child: bodyView));
  }

  Widget headerView(
    BuildContext context,
    BaseProductState state,
    String titleView,
    Widget bodyView,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleView,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
              )),
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
        body: Padding(padding: const EdgeInsets.all(16), child: bodyView));
  }

  Widget buttonDecoration(
      String title,
      Function callbackButton,
      Widget? callbackWidget,
      Function? callbackClosePopup,
      Function? callbackSubmit) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            onPressed: () {
              if (callbackWidget != null) {
                callbackButton(context, title, callbackWidget,
                    callbackClosePopup, callbackSubmit);
              } else {
                callbackButton(context);
              }
            },
            child: Container(
              // width: MediaQuery.of(context).size.width / 4,
              // decoration: BoxDecoration(
              //     color: Theme.of(context).colorScheme.surface,
              //     borderRadius: const BorderRadius.all(Radius.circular(16))),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 15,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            )));
  }

  void confirmationPopup(
      BuildContext context,
      String title,
      Widget callbackWidget,
      Function? callbackClosePopup,
      Function? callbackSubmit) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => PopScope(
              onPopInvokedWithResult: (bool didPop, _) {
                if (callbackClosePopup != null
                    // && didPop
                    ) {
                  BaseProductState state =
                      BlocProvider.of<BaseProductGRPCBloc>(context).state;
                  callbackClosePopup((state.product! as LedPanel).mode);
                }
              },
              child: AlertDialog(
                  title: Text(
                    title,
                    textAlign: TextAlign.center,
                  ),
                  insetPadding: const EdgeInsets.all(16),
                  content: SizedBox(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    callbackWidget,
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (callbackSubmit != null) callbackSubmit(context);
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ]))),
            ));
  }

  Widget ledPanelBuild(BuildContext context, BaseProductState state) {
    final LedPanel product = state.product! as LedPanel;
    setLedMode(product.mode);

    final Map<String, Widget> tabs = {
      "Product details": SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 10),
        // add categories
        LedModeDetailsView(
          callbackUpdateProductLedMode: updateProduct,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonDecoration(
                "Update IP",
                confirmationPopup,
                IpUpdateAlertView(
                    ipAddress: product.ipAddress,
                    ipPort: product.ipPort,
                    callbackUpdateIp: updateProduct),
                null,
                null),
            const SizedBox(width: 20),
            buttonDecoration(
                "Mode Selection",
                confirmationPopup,
                LedModeListView(callbackUpdateProductLedMode: updateProduct),
                setLedMode,
                null)
          ],
        )
      ])),
      "Tasks": PeriodicTaskListView(
        classType: "Product",
        classId: state.product!.id,
        onlyBody: true,
      )
    };

    return headerView(
        context,
        state,
        product.name.capitalize,
        DefaultTabController(
            length: tabs.length,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  child: decorationBlock(
                      context,
                      Column(children: [
                        TabBar.secondary(
                            indicator: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              border: Border(
                                bottom: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    width: 3.0),
                              ),
                            ),
                            tabs: tabs.keys
                                .map((String name) => Tab(text: name))
                                .toList()),
                        const SizedBox(height: 10),
                        Expanded(
                            child: TabBarView(children: tabs.values.toList())),
                      ]))),
              const SizedBox(height: 20),
              decorationBlock(
                  context,
                  Column(children: [
                    InteractiveSlider(
                        controller: _controllerBrightness,
                        startIcon: const Icon(Icons.brightness_low),
                        endIcon: const Icon(Icons.brightness_high),
                        unfocusedOpacity: 0.8,
                        unfocusedHeight: 25,
                        focusedHeight: 40,
                        unfocusedMargin:
                            const EdgeInsets.symmetric(horizontal: 0),
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        iconGap: 16,
                        onProgressUpdated: (_) {
                          updateProduct(context, {
                            "brightness": double.parse(
                                _controllerBrightness.value.toStringAsFixed(2))
                          });
                        }),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buttonDecoration("Delete Product", confirmationPopup,
                            Container(), null, callbackDeleteLedPanel),
                        const SizedBox(width: 20),
                        buttonDecoration("Refresh Product", refreshLedPanel,
                            null, null, null),
                        const SizedBox(width: 20),
                        SizedBox(
                            width: (MediaQuery.of(context).size.width * 0.1)
                                .clamp(70, 200),
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: OnOffButton(
                                  status: product.status,
                                  callbackUpdateStatus: updateProduct,
                                ))),
                      ],
                    )
                  ]))
            ])));
  }

  Widget errorBuild(BuildContext context, BaseProductState errorState) {
    return headerView(
      context,
      errorState,
      "Error Led panel",
      Center(child: Text(errorState.message)),
    );
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
