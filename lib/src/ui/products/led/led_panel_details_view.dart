import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/products/led/modes/led_mode.dart";
import "package:iot_controller/src/models/products/led/led_panel.dart";
import "package:iot_controller/src/models/status.dart";
import "package:flutter/material.dart";
import "package:iot_controller/src/ui/products/led/modes/led_mode_list_alert_view.dart";
import "package:iot_controller/src/ui/settings/settings_view.dart";
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

  void updateMode(LedMode m) {
    setState(() => product.mode = m);
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
          title: const Text("Led Panel details"),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.restorablePushNamed(context, SettingsView.routeName);
              },
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      product.name,
                      style: const TextStyle(fontSize: 28),
                      textAlign: TextAlign.center,
                    )),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      product.status.name,
                      style: const TextStyle(fontSize: 28),
                      textAlign: TextAlign.center,
                    )),
                // add categories
                OnOffButton(
                    status: product.status, callbackUpdateStatus: updateStatus),
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
                            Colors.black, Colors.yellow, product.brightness)!;
                      });
                    },
                    onChangeEnd: (value) {
                      updateProduct();
                    }),
                LedModeDetailsView(
                    mode: product.mode, callbackUpdateMode: updateMode),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: const Text("Change Mode"),
                              content: LedModeListAlertView(
                                  callbackUpdateMode: updateMode),
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
                  child: const Text("Update mode"),
                ),
              ],
            ),
          ),
        ));
  }
}

class LedPanelMinimalDetailsView extends StatefulWidget {
  final LedPanel product;

  const LedPanelMinimalDetailsView({super.key, required this.product});

  @override
  State<LedPanelMinimalDetailsView> createState() =>
      _LedPanelMinimalDetailsViewState();
}

class _LedPanelMinimalDetailsViewState
    extends State<LedPanelMinimalDetailsView> {
  late LedPanel product;
  late Color colorBrightness;

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
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, product.brightness)!;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
                title: Text(
                  product.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                ),
                trailing: OnOffButton(
                    status: product.status,
                    callbackUpdateStatus: updateStatus)),
            Slider(
                min: 0,
                max: 1,
                activeColor: colorBrightness,
                inactiveColor: Colors.grey,
                thumbColor: colorBrightness,
                value: product.brightness,
                onChanged: (value) {
                  setState(() {
                    product.brightness = double.parse(value.toStringAsFixed(2));
                    colorBrightness = Color.lerp(
                        Colors.black, Colors.yellow, product.brightness)!;
                  });
                },
                onChangeEnd: (value) {
                  updateProduct();
                }),
          ],
        ));
  }
}
