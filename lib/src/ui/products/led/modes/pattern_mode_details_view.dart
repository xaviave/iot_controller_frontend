import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactive_slider/interactive_slider.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/models/products/led/default_palette.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';

class PatternModeDetailsView extends StatefulWidget {
  final Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;

  const PatternModeDetailsView({
    super.key,
    required this.callbackUpdateProductLedMode,
  });

  @override
  State<PatternModeDetailsView> createState() => _PatternModeDetailsViewState();
}

class _PatternModeDetailsViewState extends State<PatternModeDetailsView> {
  late PatternMode mode;
  late Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;
  Map<String, PatternMode> patterns = <String, PatternMode>{};

  @override
  void initState() {
    super.initState();
    callbackUpdateProductLedMode = widget.callbackUpdateProductLedMode;

    mode = BlocProvider.of<LedModeGRPCBloc>(context).state.mode as PatternMode;
  }

  // void serverPartialUpdate(BuildContext, Map<String, dynamic> fields) {
  //   context
  //       .read<LedModeGRPCBloc>()
  //       .add(PartialUpdateLedModeEvent(mode: mode, fields: fields));
  //   callbackUpdateLedMode({"mode": mode});
  // }

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
    callbackUpdateProductLedMode(context, {"mode": mode.getAbstractRequest()});
  }

  GestureDetector addColorWidget(int index, Color c, bool addNewColor) {
    return GestureDetector(
        onLongPress: () {
          setState(() {
            if (addNewColor == false) {
              mode.palette.removeAt(index);
              callbackUpdateProductLedMode(
                  context, {"mode": mode.getAbstractRequest()});
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
                  ColorPickerType.wheel: true
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
                  minHeight: 480,
                  minWidth: 120,
                  maxWidth: 120,
                ),
              );
              updatePaletteColor(index, newColor, addNewColor);
            }));
  }

  Widget buttonDecoration(
      String title,
      Function callbackButton,
      Widget? callbackWidget,
      Function? callbackClosePopup,
      Function? callbackSubmit) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            onPressed: () {
              if (callbackWidget != null) {
                callbackButton(context, title, callbackWidget,
                    callbackClosePopup, callbackSubmit);
              } else {
                callbackButton(context);
              }
            },
            child: Container(
              // width: MediaQuery.of(context).size.width / 4,
              // decoration: BoxDecoration(
              //     color: Theme.of(context).colorScheme.surface,
              //     borderRadius: const BorderRadius.all(Radius.circular(16))),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 15,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            )));
  }

  void confirmationPopup(
      BuildContext context,
      String title,
      Widget callbackWidget,
      Function? callbackClosePopup,
      Function? callbackSubmit) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          insetPadding: const EdgeInsets.all(16),
          content: SizedBox(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
            callbackWidget,
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (callbackSubmit != null) callbackSubmit(context);
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                )
              ],
            )
          ]))),
    ).then((selectedPalette) {
      if (selectedPalette != null) {
        setState(() {
          mode.palette = selectedPalette.p;
        });
        callbackUpdateProductLedMode(
            context, {"mode": mode.getAbstractRequest()});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    mode = BlocProvider.of<LedModeGRPCBloc>(context).state.mode as PatternMode;

    // missing settings
    return Column(
      children: [
        Wrap(
            children: List.generate(mode.palette.length, (i) => i).map((index) {
          return addColorWidget(index, mode.palette[index], false);
        }).toList()),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonDecoration(
                "Add Color",
                (context) => updatePaletteColor(0, Colors.grey, true),
                null,
                null,
                null),
            const SizedBox(width: 20),
            buttonDecoration(
                "Change Palette",
                confirmationPopup,
                SizedBox(
                    width: MediaQuery.of(context).size.height * 0.5,
                    height: MediaQuery.of(context).size.height * 0.75,
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
                    )),
                null,
                // setLedMode,
                null)
          ],
        ),
        const SizedBox(height: 16),
        InteractiveSlider(
            centerIcon: const Text('FPS'),
            startIcon: const Icon(Icons.pause),
            endIcon: const Icon(Icons.fast_forward),
            iconPosition: IconPosition.inside,
            // unfocusedOpacity: 0.8,
            unfocusedHeight: 25,
            focusedHeight: 40,
            unfocusedMargin: const EdgeInsets.symmetric(horizontal: 0),
            backgroundColor: Theme.of(context).colorScheme.surface,
            iconGap: 16,
            onChanged: (value) {
              setState(() {
                setState(() {
                  mode.fps = double.parse(value.toStringAsFixed(2));
                });
              });
            },
            onProgressUpdated: (_) {
              callbackUpdateProductLedMode(
                  context, {"mode": mode.getAbstractRequest()});
            }),
        InteractiveSlider(
            centerIcon: const Text('Blink interval'),
            startIcon: const Icon(Icons.pause),
            endIcon: const Icon(Icons.fast_forward),
            iconPosition: IconPosition.inside,
            // unfocusedOpacity: 0.8,
            unfocusedHeight: 25,
            focusedHeight: 40,
            unfocusedMargin: const EdgeInsets.symmetric(horizontal: 0),
            backgroundColor: Theme.of(context).colorScheme.surface,
            iconGap: 16,
            onChanged: (value) {
              setState(() {
                mode.blink = double.parse(value.toStringAsFixed(2));
              });
            },
            onProgressUpdated: (_) {
              callbackUpdateProductLedMode(
                  context, {"mode": mode.getAbstractRequest()});
            }),
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
