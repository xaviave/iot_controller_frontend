import "package:flutter_application_1/src/models/products/led/led_mode.dart";
import "package:flutter_application_1/src/models/products/led/led_panel.dart";
import "package:flutter_application_1/src/models/status.dart";
import "package:flutter_application_1/src/settings/settings_view.dart";
import "package:flutter/material.dart";
import 'package:flex_color_picker/flex_color_picker.dart';

class LedPanelDetailsView extends StatefulWidget {
  const LedPanelDetailsView({super.key});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  LedPanel? product;
  Color picker_color = Colors.black;

  Future<void> _openColorPicker() async {
    await ColorPicker(
      color: picker_color,
      onColorChanged: (Color newColor) {
        setState(() {
          picker_color = newColor;
        });
      },
      width: 40,
      height: 40,
      borderRadius: 20,
      spacing: 10,
      runSpacing: 10,
      heading: const Text('Pick a color'),
      subheading: const Text('Select a color for your widget'),
      wheelDiameter: 200,
      wheelWidth: 20,
    ).showPickerDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    product ??= ModalRoute.of(context)!.settings.arguments as LedPanel;
    // final product = ModalRoute.of(context)!.settings.arguments as LedPanel;
    Color? color = Colors.yellow[product!.brightness.toInt()];
    picker_color = (product!.mode as ColorMode).color;

    // missing settings
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
                  product!.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product!.status.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            // add categories
            Row(children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      product!.status == Status.off
                          ? Colors.yellow
                          : Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    product!.status = Status.off;
                  });
                },
                child: const Text("Off"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      product!.status == Status.on
                          ? Colors.yellow
                          : Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    product!.status = Status.on;
                  });
                },
                child: const Text("On"),
              ),
            ]),
            Slider(
              min: 0,
              max: 1,
              activeColor: color,
              inactiveColor: Colors.grey,
              thumbColor: color,
              value: product!.brightness,
              onChanged: (value) {
                setState(() {
                  product!.brightness = value;
                  // do not work
                  color = Color.lerp(
                      Colors.black, Colors.yellow, product!.brightness);
                });
              },
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  // add LedModeDetailsView()
                  product!.mode.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
              width: 100,
              height: 100,
              color: picker_color,
            ),
            ElevatedButton(
              onPressed: () => {
                _openColorPicker(),
                setState(() {
                  (product!.mode as ColorMode).color = picker_color!;
                })
              },
              child: const Text('Change lamp Color'),
            ),
          ],
        ),
      ),
    );
  }
}
