import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/color_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';

final Map<String, Function(String)> ledModeTypes = {
  "Color mode": (name) => ColorMode(id: -1, name: name, color: Colors.black),
  "Pattern mode": (name) => PatternMode(
        id: -1,
        name: name,
        fps: 0.0,
        blink: 0.0,
        palette: [Colors.black],
      ),
  // "Image mode": ImageMode,
  // "Video mode": VideoMode,
};

class LedModeForm extends StatefulWidget {
  final Function(LedMode) callbackCreateLedMode;

  const LedModeForm({super.key, required this.callbackCreateLedMode});

  @override
  LedModeFormState createState() {
    return LedModeFormState();
  }
}

class LedModeFormState extends State<LedModeForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  String _ledModeController = ledModeTypes.keys.first;

  late Function(LedMode) callbackCreateLedMode;

  @override
  void initState() {
    super.initState();
    callbackCreateLedMode = widget.callbackCreateLedMode;
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
              labelText: 'Led Mode name',
            ),
            validator: (value) {
              return (value != null && value.isEmpty)
                  ? 'Please enter a name.'
                  : null;
            },
          ),
          const SizedBox(height: 16),
          const Text("Select type of Led Mode:"),
          const SizedBox(height: 6),
          DropdownButton<String>(
            value: _ledModeController,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            onChanged: (String? value) {
              setState(() => _ledModeController = value!);
            },
            items:
                ledModeTypes.keys.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          Row(
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
                      LedMode m = ledModeTypes[_ledModeController]!(
                          _nameController.text);

                      callbackCreateLedMode(m);
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
