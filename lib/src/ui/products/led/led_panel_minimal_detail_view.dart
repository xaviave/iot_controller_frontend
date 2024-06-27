import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/models/status.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/on_off_button.dart';

class LedPanelMinimalDetailsView extends StatefulWidget {
  final LedPanel product;

  const LedPanelMinimalDetailsView({super.key, required this.product});

  @override
  State<LedPanelMinimalDetailsView> createState() =>
      _LedPanelMinimalDetailsViewState();
}

class _LedPanelMinimalDetailsViewState
    extends State<LedPanelMinimalDetailsView> {
  late LedPanel product;
  late Color colorBrightness;

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
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, product.brightness)!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name.capitalize,
                        style: const TextStyle(fontSize: 28),
                        textAlign: TextAlign.center,
                      ),
                      OnOffButton(
                          status: product.status,
                          callbackUpdateStatus: updateStatus)
                    ]),
                Slider(
                    min: 0,
                    max: 1,
                    activeColor: colorBrightness,
                    inactiveColor: Colors.grey,
                    thumbColor: colorBrightness,
                    value: product.brightness,
                    onChanged: (value) {
                      setState(() {
                        product.brightness =
                            double.parse(value.toStringAsFixed(2));
                        colorBrightness = Color.lerp(
                            Colors.black, Colors.yellow, product.brightness)!;
                      });
                    },
                    onChangeEnd: (value) {
                      updateProduct();
                    }),
              ],
            )));
  }
}
