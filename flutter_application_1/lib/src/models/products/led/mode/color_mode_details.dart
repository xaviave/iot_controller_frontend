import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/mode/led_mode.dart';

class ColorModeDetailsView extends StatefulWidget {
  final ColorMode mode;
  final Function(LedMode) callbackUpdateMode;

  const ColorModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  State<ColorModeDetailsView> createState() => _ColorModeDetailsViewState();
}

class _ColorModeDetailsViewState extends State<ColorModeDetailsView> {
  late ColorMode mode;
  late Color pickerColor;
  late Function(LedMode) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    pickerColor = mode.color;
    callbackUpdateMode = widget.callbackUpdateMode;
  }

  Future<void> _openColorPicker() async {
    await ColorPicker(
      color: pickerColor,
      onColorChanged: (Color newColor) {
        setState(() {
          pickerColor = newColor;
          mode.color = pickerColor;
          callbackUpdateMode(mode as LedMode);
        });
      },
      width: 40,
      height: 40,
      borderRadius: 20,
      spacing: 10,
      runSpacing: 10,
      heading: const Text('Pick a color'),
      subheading: const Text('Select a color for your widget'),
      wheelDiameter: 200,
      wheelWidth: 20,
    ).showPickerDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    // missing settings
    return Center(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
                // add LedModeDetailsView()
                mode.name,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Container(
            width: 100,
            height: 100,
            color: pickerColor,
          ),
          ElevatedButton(
            onPressed: () => {
              _openColorPicker(),
              // setState(() {
              // })
            },
            child: const Text('Change lamp Color'),
          ),
        ],
      ),
    );
  }
}
