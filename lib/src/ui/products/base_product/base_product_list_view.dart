import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/ui/products/coffee_machine/coffee_machine_details_view.dart';
import 'package:iot_controller/src/ui/products/coffee_machine/coffee_machine_minimal_view.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_details_view.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_minimal_detail_view.dart';

class BaseProductListView extends StatefulWidget {
  const BaseProductListView({super.key, required this.callbackUpdateProject});

  final Function(BaseProduct) callbackUpdateProject;
  static const routeName = '/products';

  @override
  State<BaseProductListView> createState() => _BaseProductListViewState();
}

class _BaseProductListViewState extends State<BaseProductListView> {
  // separate Project bloc from BaseProduct Bloc
  late Function(BaseProduct) callbackUpdateProject;

  @override
  void initState() {
    super.initState();
    callbackUpdateProject = widget.callbackUpdateProject;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseProductGRPCBloc, BaseProductState>(
        builder: (context, state) {
      print(state);
      if (state is BaseProductListInitial || state is BaseProductLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is BaseProductListSuccess ||
          state is GetBaseProductSuccess ||
          state is RetrieveBaseProductSuccess ||
          state is UpdateBaseProductSuccess ||
          state is CreateBaseProductSuccess ||
          state is DestroyBaseProductSuccess) {
        final List<BaseProduct> products = state.products;
        return ListView.separated(
            restorationId: 'BaseProductListView',
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: () {
                if (products[index] is LedPanel) {
                  return LedPanelMinimalDetailsView(
                      product: products[index] as LedPanel);
                } else if (products[index] is CoffeeMachine) {
                  return CoffeeMachineMinimalDetailsView(
                      product: products[index] as CoffeeMachine);
                }
              }(), onTap: () {
                context.read<BaseProductGRPCBloc>().add(GetBaseProductEvent(
                    product: products[index], products: products));
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  if (products[index] is LedPanel) {
                    return LedPanelDetailsView(
                        callbackUpdateProject: callbackUpdateProject);
                  } else {
                    return CoffeeMachineDetailsView(
                        callbackUpdateProject: callbackUpdateProject);
                  }
                }));
              });
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10));
      } else {
        return SizedBox();
      }
    });
  }
}
