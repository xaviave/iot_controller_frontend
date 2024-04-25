import "package:flutter_application_1/src/models/products/base_product.dart";
import "package:flutter_application_1/src/models/products/led/led_mode.dart";
import "package:flutter_application_1/src/models/products/led/led_panel.dart";
import "package:flutter_application_1/src/models/status.dart";
import "package:flutter_application_1/src/providers/led_mode.dart";
import "package:flutter_application_1/src/providers/product.dart";
import "package:flutter_application_1/src/settings/settings_view.dart";
import "package:flutter/material.dart";
import "package:flutter_application_1/src/ui/utils/on_off_button.dart";
import "package:provider/provider.dart";

import "modes/led_mode_details_view.dart";

class LedPanelDetailsView extends StatefulWidget {
  final LedPanel product;
  final Function(BaseProduct, BuildContext) callbackUpdateProject;

  const LedPanelDetailsView(
      {super.key, required this.product, required this.callbackUpdateProject});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late LedPanel product;
  late Color colorBrightness;
  late Function(BaseProduct, BuildContext) callbackUpdateProject;

  void updateMode(LedMode m, BuildContext context) {
    setState(() => product.mode = m);
    updateProduct();
  }

  void updateStatus(Status s) {
    setState(() => product.status = s);
    updateProduct();
  }

  void updateProduct() {
    final baseProductProvider =
        Provider.of<BaseProductProvider>(context, listen: false);

    baseProductProvider.updateProduct(product);
  }

  @override
  void initState() {
    super.initState();
    product = widget.product;
    callbackUpdateProject = widget.callbackUpdateProject;
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, product.brightness)!;
  }

  void setStateUpdate(VoidCallback fn, BuildContext context) {
    super.setState(fn);
    // callbackUpdateProject(product as BaseProduct, context);
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
                setStateUpdate(() {
                  product.brightness = double.parse(value.toStringAsFixed(2));
                  updateProduct();
                  // do not work
                  colorBrightness = Color.lerp(
                      Colors.black, Colors.yellow, product.brightness)!;
                }, context);
              },
            ),
            Expanded(
                child: LedModeDetailsView(
                    mode: product.mode, callbackUpdateMode: updateMode)),
          ],
        ),
      ),
    );
  }
}
