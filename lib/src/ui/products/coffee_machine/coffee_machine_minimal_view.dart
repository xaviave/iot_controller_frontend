import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/status.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/on_off_button.dart';

class CoffeeMachineMinimalDetailsView extends StatefulWidget {
  final CoffeeMachine product;

  const CoffeeMachineMinimalDetailsView({super.key, required this.product});

  @override
  State<CoffeeMachineMinimalDetailsView> createState() =>
      _CoffeeMachineMinimalDetailsViewState();
}

class _CoffeeMachineMinimalDetailsViewState
    extends State<CoffeeMachineMinimalDetailsView> {
  late CoffeeMachine product;

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
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          product.name.capitalize,
          style: const TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        OnOffButton(status: product.status, callbackUpdateStatus: updateStatus)
      ]),
    ));
  }
}
