import "package:flutter_application_1/src/models/products/led/led_panel.dart";
import "package:flutter_application_1/src/models/status.dart";
import "package:flutter_application_1/src/settings/settings_view.dart";
import "package:flutter/material.dart";
import "package:grpc/grpc.dart";

class LedPanelDetailsView extends StatefulWidget {
  const LedPanelDetailsView({super.key});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as LedPanel;
    Color? color = Colors.yellow[product.brightness.toInt()];

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
            ElevatedButton(
              onPressed: () {
                // sayHello();
              },
              child: const Text("Off"),
            ),
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
            Row(children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      product.status == Status.off
                          ? Colors.yellow
                          : Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    product.status = Status.off;
                  });
                },
                child: const Text("Off"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      product.status == Status.on
                          ? Colors.yellow
                          : Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    product.status = Status.on;
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
              value: product.brightness,
              onChanged: (value) {
                setState(() {
                  product.brightness = value;
                  // do not work
                  color = Color.lerp(
                      Colors.black, Colors.yellow, product.brightness);
                });
              },
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  // add LedModeDetailsView()
                  product.mode.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
