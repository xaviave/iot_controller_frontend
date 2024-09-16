import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactive_slider/interactive_slider.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/models/status.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

class LedPanelMinimalDetailsView extends StatefulWidget {
  final int productIndex;

  const LedPanelMinimalDetailsView({super.key, required this.productIndex});

  @override
  State<LedPanelMinimalDetailsView> createState() =>
      _LedPanelMinimalDetailsViewState();
}

class _LedPanelMinimalDetailsViewState
    extends State<LedPanelMinimalDetailsView> {
  final InteractiveSliderController _controllerBrightness =
      InteractiveSliderController(0);

  void updateProduct(BuildContext context, Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.products[widget.productIndex],
        fields: fields,
        products: state.products));
  }

  Widget ledPanelMinimalBuild(BuildContext context, LedPanel product) {
    _controllerBrightness.value = product.brightness;

    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
                            product.name.capitalize,
                            style: const TextStyle(fontSize: 28),
                          )),
                          Switch(
                            value: product.status == Status.on,
                            activeColor: Colors.yellow,
                            onChanged: (bool value) {
                              setState(() {
                                updateProduct(context, {
                                  "status": (value ? Status.on : Status.off).id
                                });
                              });
                            },
                          ),
                        ])),
                InteractiveSlider(
                    controller: _controllerBrightness,
                    startIcon: const Icon(Icons.brightness_low),
                    endIcon: const Icon(Icons.brightness_high),
                    unfocusedOpacity: 0.8,
                    unfocusedHeight: 25,
                    focusedHeight: 40,
                    unfocusedMargin: const EdgeInsets.symmetric(horizontal: 0),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    iconGap: 16,
                    onProgressUpdated: (_) {
                      updateProduct(context, {
                        "brightness": double.parse(
                            _controllerBrightness.value.toStringAsFixed(2))
                      });
                    })
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BaseProductGRPCBloc, BaseProductState,
            List<BaseProduct>>(
        selector: (state) => state.products,
        builder: (context, products) {
          return ledPanelMinimalBuild(
              context, products[widget.productIndex] as LedPanel);
        });
  }
}
