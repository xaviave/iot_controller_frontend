import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';

class CoffeeMachineDetailsView extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;

  const CoffeeMachineDetailsView(
      {super.key, required this.callbackUpdateProject});

  @override
  State<CoffeeMachineDetailsView> createState() =>
      _CoffeeMachineDetailsViewState();
}

class _CoffeeMachineDetailsViewState extends State<CoffeeMachineDetailsView> {
  late Function(BaseProduct) callbackUpdateProject;

  @override
  void initState() {
    super.initState();
    callbackUpdateProject = widget.callbackUpdateProject;
  }

  @override
  Widget build(BuildContext context) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    CoffeeMachine product = state.product! as CoffeeMachine;
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
      body: Column(
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
                product.waterLevel.name,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
                product.usedWaterLevel.name,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
                product.coffeeLevel.name,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
                product.filterPosition ? "Good" : "Bad",
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
                product.modeValue.toString(),
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
