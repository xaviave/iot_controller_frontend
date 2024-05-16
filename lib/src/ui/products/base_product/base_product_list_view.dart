import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_details_view.dart';

import '../coffee_machine/coffee_machine_details_view.dart';

class BaseProductListView extends StatelessWidget {
  final Function(BaseProduct) callbackUpdateProject;
  static const routeName = '/products';

  final Map<String, BaseProduct> products;

  const BaseProductListView(
      {super.key, required this.products, required this.callbackUpdateProject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        restorationId: 'BaseProductListView',
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          String name = products.keys.elementAt(index);

          return ListTile(
            title: Text('BaseProduct $name'),
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              if (products[name] is LedPanel) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LedPanelDetailsView(
                        product: products[name] as LedPanel,
                        callbackUpdateProject: callbackUpdateProject),
                    settings: const RouteSettings(),
                  ),
                );
              } else if (products[name] is CoffeeMachine) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoffeeMachineDetailsView(
                        product: products[name] as CoffeeMachine,
                        callbackUpdateProject: callbackUpdateProject),
                    settings: const RouteSettings(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
