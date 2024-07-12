import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:iot_controller/protos/backend.pbjson.dart";
import "package:iot_controller/src/blocs/led_mode.dart";
import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/products/led/led_panel.dart";
import "package:iot_controller/src/models/products/led/modes/led_mode.dart";
import "package:iot_controller/src/models/status.dart";
import "package:iot_controller/src/ui/products/base_product/update_ip_alert_view.dart";
import "package:iot_controller/src/ui/products/led/modes/led_mode_list_view.dart";
import "package:iot_controller/src/ui/settings/settings_view.dart";
import "package:iot_controller/src/ui/utils/capitalize.dart";
import "package:iot_controller/src/ui/utils/on_off_button.dart";
import "package:iot_controller/src/ui/utils/popup/delete_popup.dart";
import "package:iot_controller/src/ui/utils/popup/refresh_popup.dart";
import "package:provider/provider.dart";

import "modes/led_mode_details_view.dart";

class LedPanelDetailsView extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;

  const LedPanelDetailsView({super.key, required this.callbackUpdateProject});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late Color colorBrightness;
  late Function(BaseProduct) callbackUpdateProject;

  Future<bool> refreshLedPanel(BuildContext context) async {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(RetrieveBaseProductEvent(
        product: state.product!, products: state.products));
    return true;
  }

  void callbackDeleteLedPanel() {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(DestroyBaseProductEvent(
        product: state.product!, products: state.products));
    print("check redirection and path");
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/products', (Route<dynamic> route) => false);
  }

  void updateProduct(Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.product!, fields: fields, products: state.products));
  }

  @override
  void initState() {
    super.initState();
    callbackUpdateProject = widget.callbackUpdateProject;
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
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.restorablePushNamed(context, SettingsView.routeName);
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

    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, product.brightness)!;

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
                  value: product.brightness,
                  onChanged: (value) {
                    setState(() {
                      product.brightness =
                          double.parse(value.toStringAsFixed(2));
                      colorBrightness = Color.lerp(
                        Colors.black,
                        Colors.yellow,
                        product.brightness,
                      )!;
                    });
                  },
                  onChangeEnd: (value) {
                    updateProduct({"brightness": value});
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
                          builder: (BuildContext context) => AlertDialog(
                                  title: const Text("Change Mode"),
                                  insetPadding: const EdgeInsets.all(50),
                                  content: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: LedModeListView(
                                        callbackUpdateLedMode: updateProduct,
                                      )),
                                  actions: [
                                    TextButton(
                                        child: const Text("Cancel"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        })
                                  ]));
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
                mode: product.mode,
                callbackUpdateLedMode: updateProduct,
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
      print("fw $state");
      if (state is BaseProductListInitial || state is BaseProductLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetBaseProductSuccess ||
          state is RetrieveBaseProductSuccess ||
          state is UpdateBaseProductSuccess ||
          state is CreateBaseProductSuccess ||
          state is DestroyBaseProductSuccess) {
        return ledPanelBuild(context, state);
      } else {
        return errorBuild(context, state);
      }
    });
  }
}
