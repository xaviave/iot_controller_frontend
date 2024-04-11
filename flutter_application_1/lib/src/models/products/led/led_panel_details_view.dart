import "package:flutter_application_1/src/models/products/led/led_mode_details.dart";
import "package:flutter_application_1/src/models/products/led/led_panel.dart";
import "package:flutter_application_1/src/settings/settings_view.dart";
import "package:flutter/material.dart";
import "package:flutter_application_1/src/utils/on_off_button.dart";

class LedPanelDetailsView extends StatefulWidget {
  final LedPanel product;
  const LedPanelDetailsView({super.key, required this.product});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late LedPanel product;
  late Color colorBrightness;

  @override
  void initState() {
    super.initState();
    product = widget.product;
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
            OnOffButton(product: product),
            Slider(
              min: 0,
              max: 1,
              activeColor: colorBrightness,
              inactiveColor: Colors.grey,
              thumbColor: colorBrightness,
              value: product.brightness,
              onChanged: (value) {
                setState(() {
                  product.brightness = value;
                  // do not work
                  colorBrightness = Color.lerp(
                      Colors.black, Colors.yellow, product.brightness)!;
                });
              },
            ),
            Expanded(child: LedModeDetailsView(mode: product.mode)),
          ],
        ),
      ),
    );
  }
}
