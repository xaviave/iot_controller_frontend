import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class LedPanelDetailsView extends StatelessWidget {
  const LedPanelDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as LedPanel;

    // missing settings
    return Scaffold(
      appBar: AppBar(
        title: const Text('Led Panel details'),
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
            // add categories
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.status.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.brightness.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
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
