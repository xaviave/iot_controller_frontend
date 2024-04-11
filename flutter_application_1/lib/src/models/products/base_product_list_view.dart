import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine_details_view.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel_details_view.dart';

class BaseProductListView extends StatelessWidget {
  BaseProductListView({super.key, required this.products});

  static const routeName = '/products';

  List<BaseProduct> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        restorationId: 'BaseProductListView',
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];

          return ListTile(
            title: Text('BaseProduct ${product.name}'),
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              if (product is LedPanel) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LedPanelDetailsView(product: product),
                    settings: const RouteSettings(),
                  ),
                );
              } else if (product is CoffeeMachine) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CoffeeMachineDetailsView(product: product),
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
