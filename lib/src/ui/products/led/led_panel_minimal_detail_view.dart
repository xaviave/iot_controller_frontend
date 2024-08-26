import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactive_slider/interactive_slider.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/on_off_button.dart';

class LedPanelMinimalDetailsView extends StatefulWidget {
  final int productIndex;

  const LedPanelMinimalDetailsView({super.key, required this.productIndex});

  @override
  State<LedPanelMinimalDetailsView> createState() =>
      _LedPanelMinimalDetailsViewState();
}

class _LedPanelMinimalDetailsViewState
    extends State<LedPanelMinimalDetailsView> {
  late Color colorBrightness;
  late double productBrightness;

  void updateProduct(BuildContext context, Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.products[widget.productIndex],
        fields: fields,
        products: state.products));
  }

  @override
  void initState() {
    super.initState();
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    productBrightness =
        (state.products[widget.productIndex] as LedPanel).brightness;
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, productBrightness)!;
  }

  @override
  Widget build(BuildContext context) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;
    LedPanel product = state.products[widget.productIndex] as LedPanel;
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
                          Text(
                            product.name.capitalize,
                            style: const TextStyle(fontSize: 28),
                            textAlign: TextAlign.center,
                          ),
                          OnOffButton(
                              status: product.status,
                              callbackUpdateStatus: updateProduct)
                        ])),
                InteractiveSlider(
                    iconPosition: IconPosition.inside,
                    unfocusedHeight: 25,
                    focusedHeight: 40,
                    unfocusedMargin: const EdgeInsets.symmetric(horizontal: 0),
                    foregroundColor: colorBrightness,
                    iconGap: 16,
                    onChanged: (value) {
                      setState(() {
                        productBrightness =
                            double.parse(value.toStringAsFixed(2));
                        colorBrightness = Color.lerp(
                          Colors.black,
                          Colors.yellow,
                          productBrightness,
                        )!;
                      });
                    },
                    onProgressUpdated: (_) {
                      updateProduct(context, {"brightness": productBrightness});
                    })
              ],
            )));
  }
}
