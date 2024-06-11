import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/default_palette.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';
import 'package:iot_controller/src/ui/utils/alert_popup.dart';

class PatternModeDetailsView extends StatefulWidget {
  final PatternMode mode;
  final Function(LedMode) callbackUpdateMode;

  const PatternModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  State<PatternModeDetailsView> createState() => _PatternModeDetailsViewState();
}

class _PatternModeDetailsViewState extends State<PatternModeDetailsView> {
  late PatternMode mode;
  late Color fpsColor;
  late Color blinkColor;
  Map<String, PatternMode> patterns = <String, PatternMode>{};
  late Function(LedMode) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    fpsColor = Color.lerp(Colors.black, Colors.white, mode.fps)!;
    blinkColor = Color.lerp(Colors.black, Colors.white, mode.blink)!;
    callbackUpdateMode = widget.callbackUpdateMode;
  }

  void callbackUpdatePaletteColor(int index, Color newColor, bool addNewColor) {
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
      callbackUpdateMode(mode);
    });
  }

  void callbackUpdatePalette(List<Color> p) {
    setState(() {
      mode.palette = List.from(p);
      callbackUpdateMode(mode);
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
                  pasteButton: false,
                  longPressMenu: false,
                ),
                actionButtons: const ColorPickerActionButtons(
                  okButton: true,
                  closeButton: true,
                  dialogActionButtons: false,
                ),
                constraints: const BoxConstraints(
                    minHeight: 480, minWidth: 320, maxWidth: 320),
              );
              callbackUpdatePaletteColor(index, newColor, addNewColor);
            }));
  }

  @override
  Widget build(BuildContext context) {
    // missing settings
    return Column(
      children: [
        const Text('FPS'),
        Slider(
            min: 0,
            max: 1,
            activeColor: fpsColor,
            inactiveColor: Colors.grey,
            thumbColor: fpsColor,
            value: mode.fps,
            onChanged: (value) {
              setState(() {
                mode.fps = double.parse(value.toStringAsFixed(2));
                fpsColor = Color.lerp(Colors.black, Colors.white, mode.fps)!;
              });
            },
            onChangeEnd: (value) {
              callbackUpdateMode(mode);
            }),
        const Text('Blink interval'),
        Slider(
            min: 0,
            max: 1,
            activeColor: blinkColor,
            inactiveColor: Colors.grey,
            thumbColor: blinkColor,
            value: mode.blink,
            onChanged: (value) {
              setState(() {
                mode.blink = double.parse(value.toStringAsFixed(2));
                blinkColor =
                    Color.lerp(Colors.black, Colors.white, mode.blink)!;
              });
            },
            onChangeEnd: (value) {
              callbackUpdateMode(mode);
            }),
        Wrap(
            children: List.generate(mode.palette.length, (i) => i).map((index) {
          return addColorWidget(index, mode.palette[index], false);
        }).toList()
              ..add(addColorWidget(0, Colors.black, true))),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  child: ListView.builder(
                    itemCount: DefaultPalette.values.length,
                    itemBuilder: (context, index) {
                      final palette = DefaultPalette.values[index];
                      return ListTile(
                        title: Text(palette.name),
                        onTap: () {
                          Navigator.pop(context, palette);
                        },
                      );
                    },
                  ),
                );
              },
            ).then((selectedPalette) {
              if (selectedPalette != null) {
                callbackUpdatePalette(selectedPalette.p);
              }
            });
          },
          child: const Text('Select Palette'),
        )
      ],
    );
  }
}

class PatternModePreview extends StatelessWidget {
  final PatternMode mode;

  const PatternModePreview({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: List.generate(mode.palette.length, (i) => i).map((index) {
      return SizedBox(
          width: MediaQuery.of(context).size.width / 10,
          height: MediaQuery.of(context).size.width / 10,
          child: Container(color: mode.palette[index]));
    }).toList());
  }
}
