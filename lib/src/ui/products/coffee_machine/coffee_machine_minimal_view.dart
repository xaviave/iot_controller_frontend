import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/on_off_button.dart';

class CoffeeMachineMinimalDetailsView extends StatefulWidget {
  final int productIndex;

  const CoffeeMachineMinimalDetailsView(
      {super.key, required this.productIndex});

  @override
  State<CoffeeMachineMinimalDetailsView> createState() =>
      _CoffeeMachineMinimalDetailsViewState();
}

class _CoffeeMachineMinimalDetailsViewState
    extends State<CoffeeMachineMinimalDetailsView> {
  void updateProduct(BuildContext context, Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.products[widget.productIndex],
        fields: fields,
        products: state.products));
  }

  @override
  Widget build(BuildContext context) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;
    CoffeeMachine product =
        state.products[widget.productIndex] as CoffeeMachine;

    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Text(
              product.name.capitalize,
              style: const TextStyle(fontSize: 28),
            )),
            OnOffButton(
                status: product.status, callbackUpdateStatus: updateProduct)
          ]),
        ));
  }
}
