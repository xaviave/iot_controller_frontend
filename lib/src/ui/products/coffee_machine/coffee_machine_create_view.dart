import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/status.dart';

class CoffeeMachineForm extends StatefulWidget {
  final name = "coffee machine";
  final Function(BaseProduct) callbackAddBaseProduct;
  const CoffeeMachineForm({super.key, required this.callbackAddBaseProduct});

  @override
  CoffeeMachineFormState createState() => CoffeeMachineFormState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return name;
  }
}

class CoffeeMachineFormState extends State<CoffeeMachineForm> {
  late Function(BaseProduct) callbackAddBaseProduct;

  @override
  void initState() {
    super.initState();
    callbackAddBaseProduct = widget.callbackAddBaseProduct;
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance
        .addPostFrameCallback((_) => callbackAddBaseProduct(CoffeeMachine(
              id: -1,
              name: "",
              ipPort: 0,
              ipAddress: "",
              categories: [],
              status: Status.off,
              heat: 0,
              waterLevel: ContainerStatus.empty,
              usedWaterLevel: ContainerStatus.empty,
              coffeeLevel: ContainerStatus.empty,
              filterPosition: false,
              modeValue: 0,
            )));
    return Container();
  }
}
