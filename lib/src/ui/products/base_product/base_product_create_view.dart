import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/ui/products/coffee_machine/coffee_machine_create_view.dart';
import 'package:iot_controller/src/ui/products/led/led_panel_create_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:string_validator/string_validator.dart';

class BaseProductForm extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;
  const BaseProductForm({super.key, required this.callbackUpdateProject});

  @override
  BaseProductFormState createState() => BaseProductFormState();
}

class BaseProductFormState extends State<BaseProductForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ipPortController = TextEditingController();
  final _ipAddressController = TextEditingController();

  late BaseProduct product;
  late Widget _productTypeController;
  late List<Widget> baseProductTypes;

  void addBaseProduct(BuildContext context, BaseProduct p) {
    setState(() => product = p);
  }

  @override
  void initState() {
    super.initState();
    baseProductTypes = [
      LedPanelForm(callbackAddBaseProduct: addBaseProduct),
      CoffeeMachineForm(callbackAddBaseProduct: addBaseProduct),
    ];
    _productTypeController = baseProductTypes[0];
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Product name',
            ),
            validator: (value) {
              return (value != null && value.isEmpty)
                  ? 'Please enter a name.'
                  : null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _ipAddressController,
            decoration: const InputDecoration(
              labelText: 'Product Ip Address',
            ),
            validator: (value) {
              return (value != null && (value.isEmpty || !isIP(value)))
                  ? 'Please enter an Ip Address.'
                  : null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _ipPortController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Product Ip Port',
            ),
            validator: (value) {
              return (value != null && (value.isEmpty || !isInt(value)))
                  ? 'Please enter an Ip Port.'
                  : null;
            },
          ),
          const SizedBox(height: 10),
          const Text("Select type of Product:"),
          const SizedBox(height: 10),
          Center(
              child: DropdownButton<Widget>(
            value: _productTypeController,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            onChanged: (Widget? value) {
              setState(() => _productTypeController = value!);
            },
            items:
                baseProductTypes.map<DropdownMenuItem<Widget>>((Widget value) {
              return DropdownMenuItem<Widget>(
                value: value,
                child: Text(value.toString().capitalize),
              );
            }).toList(),
          )),
          const SizedBox(height: 10),
          _productTypeController,
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                    return;
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      product.name = _nameController.text;
                      product.ipPort = int.parse(_ipPortController.text);
                      product.ipAddress = _ipAddressController.text;
                      widget.callbackUpdateProject(product);
                      Navigator.of(context).pop(true);
                    }
                    return;
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
