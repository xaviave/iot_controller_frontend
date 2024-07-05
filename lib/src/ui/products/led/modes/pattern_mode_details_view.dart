import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/models/products/led/default_palette.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';
import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class PatternModeDetailsView extends StatefulWidget {
  final PatternMode mode;
  final Function(LedMode, bool) callbackUpdateLedMode;

  const PatternModeDetailsView({
    super.key,
    required this.mode,
    required this.callbackUpdateLedMode,
  });

  @override
  State<PatternModeDetailsView> createState() => _PatternModeDetailsViewState();
}

class _PatternModeDetailsViewState extends State<PatternModeDetailsView> {
  late PatternMode mode;
  late Color fpsColor;
  late Color blinkColor;
  late Function(LedMode, bool) callbackUpdateLedMode;
  Map<String, PatternMode> patterns = <String, PatternMode>{};

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    callbackUpdateLedMode = widget.callbackUpdateLedMode;
    fpsColor = Color.lerp(Colors.black, Colors.white, mode.fps)!;
    blinkColor = Color.lerp(Colors.black, Colors.white, mode.blink)!;
  }

  void serverPartialUpdate(Map<String, dynamic> fields) {
    context
        .read<LedModeGRPCBloc>()
        .add(PartialUpdateLedModeEvent(mode: mode, fields: fields));
    callbackUpdateLedMode(mode, false);
  }

  Future<void> updatePaletteColor(
      int index, Color newColor, bool addNewColor) async {
    if (mode.palette.length >= PatternMode.maxPaletteLength) {
      await showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    "Maximum palette size reached",
                  ),
                  content: const Text(
                      "The maximum of colors in a palette is: ${PatternMode.maxPaletteLength}"),
                  actions: [
                    TextButton(
                      child: const Text("Ok"),
                      onPressed: () {
                        Navigator.of(context).pop(); // dismiss dialog
                      },
                    )
                  ]));
      return;
    }
    setState(() {
      if (addNewColor == true) {
        mode.palette.add(newColor);
      } else {
        mode.palette[index] = newColor;
      }
    });
    serverPartialUpdate({"palette": mode.palette});
  }

  GestureDetector addColorWidget(int index, Color c, bool addNewColor) {
    return GestureDetector(
        onLongPress: () {
          setState(() {
            if (addNewColor == false) {
              mode.palette.removeAt(index);
              serverPartialUpdate({"palette": mode.palette});
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
              updatePaletteColor(index, newColor, addNewColor);
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
              serverPartialUpdate({"fps": value});
              // callbackUpdateMode(mode, true);
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
              serverPartialUpdate({"blink": value});
            }),
        Wrap(
            children: List.generate(mode.palette.length, (i) => i).map((index) {
          return addColorWidget(index, mode.palette[index], false);
        }).toList()),
        AbstractPopup(
            name: "Add Color",
            heroTag: "add_pattern_color",
            icon: Icons.add,
            displacement: Alignment.center,
            onPressedCallBack: () {
              addColorWidget(0, Colors.black, true);
            }),
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
                setState(() {
                  mode.palette = selectedPalette.p;
                });
                serverPartialUpdate({"palette": mode.palette});
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
