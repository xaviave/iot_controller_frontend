import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_details_view.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

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
              return ListTile(
                  // Decoration
                  // shape: RoundedRectangleBorder(
                  //   side: const BorderSide(color: Colors.white70, width: 2),
                  //   borderRadius: BorderRadius.circular(30),
                  // ),

                  // Code
                  // Should be updated to adapt each classes
                  title: LedPanelMinimalDetailsView(
                      product: products[name] as LedPanel),
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
                  });
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                )),
        floatingActionButton: Align(
            alignment: Alignment.bottomRight,
            child: MouseRegion(
                onEnter: (_) => setState(() => isHoveredCreate = true),
                onExit: (_) => setState(() => isHoveredCreate = false),
                child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.deepOrange],
                          ),
                        ),
                        width: isHoveredCreate ? 150 : 56,
                        child: FloatingActionButton.extended(
                            onPressed: () {
                              // redirect to create form pop up
                            },
                            heroTag: "base_product_create",
                            backgroundColor: Colors.transparent,
                            label: Row(children: [
                              const Icon(Icons.add),
                              isHoveredCreate
                                  ? const Text("\tCreate")
                                  : const SizedBox(),
                            ])))))));
  }
}
