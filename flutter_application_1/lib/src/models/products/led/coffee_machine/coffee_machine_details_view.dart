import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/led/coffee_machine/coffee_machine.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class CoffeeMachineDetailsView extends StatefulWidget {
  final CoffeeMachine product;
  final Function(BaseProduct) callbackUpdateProject;

  const CoffeeMachineDetailsView(
      {super.key, required this.product, required this.callbackUpdateProject});

  @override
  State<CoffeeMachineDetailsView> createState() =>
      _CoffeeMachineDetailsViewState();
}

class _CoffeeMachineDetailsViewState extends State<CoffeeMachineDetailsView> {
  late CoffeeMachine product;
  late Function(BaseProduct) callbackUpdateProject;

  @override
  void initState() {
    super.initState();
    product = widget.product;
    callbackUpdateProject = widget.callbackUpdateProject;
  }

  @override
  Widget build(BuildContext context) {
    // missing settings
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Machine details'),
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
                  product.heat.toStringAsFixed(3),
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.water_level.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.used_water_level.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.coffee_level.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.filter_position ? "Good" : "Bad",
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  product.mode_value.toString(),
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
