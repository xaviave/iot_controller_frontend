import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/led_mode.dart';

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
  late Function(LedMode) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    callbackUpdateMode = widget.callbackUpdateMode;
  }

  void callbackUpdatePalette(Color newColor) {
    setState(() {
      mode.color = newColor;
      callbackUpdateMode(mode);
    });
  }

  ColorIndicator addColorWidget(Color c) {
    return ColorIndicator(
        width: 100,
        height: 100,
        borderRadius: 0,
        color: c,
        elevation: 1,
        onSelectFocus: false,
        onSelect: () async {
          final Color newColor = await showColorPickerDialog(
            context,
            c,
            title: Text('ColorPicker',
                style: Theme.of(context).textTheme.titleLarge),
            width: 40,
            height: 40,
            spacing: 0,
            runSpacing: 0,
            borderRadius: 0,
            wheelDiameter: 165,
            enableOpacity: true,
            showColorCode: true,
            colorCodeHasColor: true,
            pickersEnabled: <ColorPickerType, bool>{
              ColorPickerType.wheel: true,
            },
            copyPasteBehavior: const ColorPickerCopyPasteBehavior(
              copyButton: true,
              pasteButton: true,
              longPressMenu: true,
            ),
            actionButtons: const ColorPickerActionButtons(
              okButton: true,
              closeButton: true,
              dialogActionButtons: false,
            ),
            constraints: const BoxConstraints(
                minHeight: 480, minWidth: 320, maxWidth: 320),
          );
          callbackUpdatePalette(newColor);
        });
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
          addColorWidget(mode.color)
        ],
      ),
    );
  }
}
