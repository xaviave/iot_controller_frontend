import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine_details_view.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel_details_view.dart';

class BaseProductListView extends StatelessWidget {
  BaseProductListView(
      {super.key, required this.products, required this.callbackUpdateProject});

  final Function(BaseProduct) callbackUpdateProject;
  static const routeName = '/products';

  Map<String, BaseProduct> products;

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
