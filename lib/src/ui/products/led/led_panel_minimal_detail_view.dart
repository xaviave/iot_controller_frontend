import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  void updateProduct(Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.products[widget.productIndex], fields: fields, products: state.products));
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

    return Card(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "https://indieground.net/wp-content/uploads/2022/06/floppydiskdesign-indiegroundblog_four_tet-1024x1024.jpg",
                    )),
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
                          callbackUpdateStatus: updateProduct)
                    ]),
                Slider(
                    min: 0,
                    max: 1,
                    activeColor: colorBrightness,
                    inactiveColor: Colors.grey,
                    thumbColor: colorBrightness,
                    value: productBrightness,
                    onChanged: (value) {
                      setState(() {
                        productBrightness =
                            double.parse(value.toStringAsFixed(2));
                        colorBrightness = Color.lerp(
                            Colors.black, Colors.yellow, productBrightness)!;
                      });
                    },
                    onChangeEnd: (value) {
                      updateProduct({"brightness": productBrightness});
                    }),
              ],
            )));
  }
}
