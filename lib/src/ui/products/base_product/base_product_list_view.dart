import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/ui/products/coffee_machine/coffee_machine_minimal_view.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_details_view.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_minimal_detail_view.dart';
import 'package:iot_controller/src/ui/project/project_create_view.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

import '../coffee_machine/coffee_machine_details_view.dart';

class BaseProductListView extends StatefulWidget {
  const BaseProductListView(
      {super.key, required this.products, required this.callbackUpdateProject});

  final Function(BaseProduct) callbackUpdateProject;
  static const routeName = '/products';

  final Map<String, BaseProduct> products;

  @override
  State<BaseProductListView> createState() => _BaseProductListViewState();
}

class _BaseProductListViewState extends State<BaseProductListView> {
  bool isHoveredCreate = false;
  late Map<String, BaseProduct> products;
  late Function(BaseProduct) callbackUpdateProject;

  @override
  void initState() {
    super.initState();
    products = widget.products;
    callbackUpdateProject = widget.callbackUpdateProject;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          restorationId: 'BaseProductListView',
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            String name = products.keys.elementAt(index);
            return ListTile(title: () {
              if (products[name] is LedPanel) {
                return LedPanelMinimalDetailsView(
                    product: products[name] as LedPanel);
              } else if (products[name] is CoffeeMachine) {
                return CoffeeMachineMinimalDetailsView(
                    product: products[name] as CoffeeMachine);
              }
            }(), onTap: () {
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
            });
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10)),
    );
  }
}
