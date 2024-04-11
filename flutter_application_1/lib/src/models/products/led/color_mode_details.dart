import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

class ColorModeDetailsView extends StatefulWidget {
  final ColorMode mode;

  const ColorModeDetailsView({super.key, required this.mode});

  @override
  State<ColorModeDetailsView> createState() => _ColorModeDetailsViewState();
}

class _ColorModeDetailsViewState extends State<ColorModeDetailsView> {
  late ColorMode mode;
  late Color pickerColor;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    pickerColor = mode.color;
  }

  Future<void> _openColorPicker() async {
    await ColorPicker(
      color: pickerColor,
      onColorChanged: (Color newColor) {
        setState(() {
          pickerColor = newColor;
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
              setState(() {
                mode.color = pickerColor;
              })
            },
            child: const Text('Change lamp Color'),
          ),
        ],
      ),
    );
  }
}
