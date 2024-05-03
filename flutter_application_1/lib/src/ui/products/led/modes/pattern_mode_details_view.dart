import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/ui/utils/alert_popup.dart';

class PatternModeDetailsView extends StatefulWidget {
  final PatternMode mode;
  final Function(LedMode, BuildContext) callbackUpdateMode;

  const PatternModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  State<PatternModeDetailsView> createState() => _PatternModeDetailsViewState();
}

class _PatternModeDetailsViewState extends State<PatternModeDetailsView> {
  late PatternMode mode;
  Map<String, PatternMode> patterns = <String, PatternMode>{};
  late Function(LedMode, BuildContext) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    callbackUpdateMode = widget.callbackUpdateMode;
    // patterns = Provider.of<LedModeProvider>(context).patternModes;
    //   need the list of color else, the palette can't be init and make the provider crash
  }

  void callbackUpdatePalette(int index, Color newColor, bool addNewColor) {
    if (mode.palette.length >= PatternMode.maxPaletteLength) {
      showInfoDialog(
          context,
          "Maximum palette size reached",
          "The maximum of colors in a palette is: ${PatternMode.maxPaletteLength}",
          "Ok");
      return;
    }
    setState(() {
      if (addNewColor == true) {
        mode.palette.add(newColor);
      } else {
        mode.palette[index] = newColor;
      }
      callbackUpdateMode(mode, context);
    });
  }

  GestureDetector addColorWidget(int index, Color c, bool addNewColor) {
    return GestureDetector(
        onLongPress: () {
          setState(() {
            if (addNewColor == false) {
              mode.palette.removeAt(index);
            }
          });
          // return;
        },
        child: ColorIndicator(
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
              callbackUpdatePalette(index, newColor, addNewColor);
            }));
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
                mode.name,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          Wrap(
              children:
                  List.generate(mode.palette.length, (i) => i).map((index) {
            return addColorWidget(index, mode.palette[index], false);
          }).toList()
                    ..add(addColorWidget(0, Colors.black, true))),
        ],
      ),
    );
  }
}
