import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
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
import "package:provider/provider.dart";

import "modes/led_mode_details_view.dart";

class LedPanelDetailsView extends StatefulWidget {
  final LedPanel product;
  final Function(BaseProduct) callbackUpdateProject;

  const LedPanelDetailsView(
      {super.key, required this.product, required this.callbackUpdateProject});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late LedPanel product;
  late Color colorBrightness;
  late Function(BaseProduct) callbackUpdateProject;

  void updateMode(LedMode m, bool serverUpdateProduct) {
    setState(() => product.mode = m);
    if (serverUpdateProduct == true) updateProduct();
  }

  void updateIp(String ipAddress, int ipPort) {
    setState(() {
      product.ipAddress = ipAddress;
      product.ipPort = ipPort;
    });
    updateProduct();
  }

  void updateStatus(Status s) {
    setState(() => product.status = s);
    updateProduct();
  }

  void updateProduct() {
    context
        .read<BaseProductGRPCBloc>()
        .add(UpdateBaseProductEvent(product: product));
  }

  @override
  void initState() {
    super.initState();
    product = widget.product;
    callbackUpdateProject = widget.callbackUpdateProject;
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, product.brightness)!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            product.name.capitalize,
            style: const TextStyle(fontSize: 28),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.restorablePushNamed(
                  context,
                  SettingsView.routeName,
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // add categories
              OnOffButton(
                status: product.status,
                callbackUpdateStatus: updateStatus,
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
                                  callbackUpdateIp: updateIp,
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
                    updateProduct();
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
                                        callbackUpdateLedMode: updateMode,
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
                callbackUpdateLedMode: updateMode,
              ),
            ],
          ),
        ));
  }
}
