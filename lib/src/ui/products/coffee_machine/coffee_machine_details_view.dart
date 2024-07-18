import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/project/project_details_view.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/delete_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

class CoffeeMachineDetailsView extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;

  const CoffeeMachineDetailsView(
      {super.key, required this.callbackUpdateProject});

  @override
  State<CoffeeMachineDetailsView> createState() =>
      _CoffeeMachineDetailsViewState();
}

class _CoffeeMachineDetailsViewState extends State<CoffeeMachineDetailsView> {
  late Function(BaseProduct) callbackUpdateProject;

  Future<bool> refreshCoffeeMachine(BuildContext context) async {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(RetrieveBaseProductEvent(
        product: state.product!, products: state.products));
    return true;
  }

  void callbackDeleteCoffeeMachine() {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(DestroyBaseProductEvent(
        product: state.product!, products: state.products));
    context.goNamed("project_detail");
  }

  void updateProduct(Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.product!, fields: fields, products: state.products));
  }

  @override
  void initState() {
    super.initState();
    callbackUpdateProject = widget.callbackUpdateProject;
  }

  Widget headerView(BuildContext context, BaseProductState state,
      String titleView, Widget bodyView, Widget? buttons) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            titleView,
            style: const TextStyle(fontSize: 28),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (state.products == []) {
                context
                    .read<BaseProductGRPCBloc>()
                    .add(GetBaseProductListEvent([]));
              }
              context.pop("/product_detail");
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.push("/settings");
              },
            ),
          ],
        ),
        body: bodyView,
        floatingActionButton: buttons ?? const SizedBox());
  }

  Widget errorBuild(BuildContext context, BaseProductState errorState) {
    return headerView(
      context,
      errorState,
      "Error Coffee Machine",
      Center(child: Text(errorState.message)),
      null,
    );
  }

  Widget coffeeMachineBuild(BuildContext context, BaseProductState state) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    CoffeeMachine product = state.product! as CoffeeMachine;
    return headerView(
        context,
        state,
        product.name.capitalize,
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    product.name,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              // add categories
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    product.heat.toStringAsFixed(2),
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    product.waterLevel.name,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    product.usedWaterLevel.name,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    product.coffeeLevel.name,
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "${product.filterPosition ? "Good" : "Bad"} position",
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    product.modeValue.toString(),
                    style: const TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DeletePopup(
                name: "coffee machine",
                objectName: product.name,
                heroTag: "coffee_machine_delete_button",
                deleteCallBack: callbackDeleteCoffeeMachine,
                onPressedCallBack: () {}),
            const SizedBox(height: 10),
            RefreshPopup(
              heroTag: "coffee_machine_refresh_button",
              onPressedCallBack: refreshCoffeeMachine,
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseProductGRPCBloc, BaseProductState>(
        builder: (context, state) {
      if (state is BaseProductListInitial || state is BaseProductLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetBaseProductSuccess ||
          state is RetrieveBaseProductSuccess ||
          state is UpdateBaseProductSuccess ||
          state is CreateBaseProductSuccess) {
        return coffeeMachineBuild(context, state);
      } else {
        return errorBuild(context, state);
      }
    });
  }
}
