import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/color_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';

class ColorModeDetailsView extends StatefulWidget {
  final Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;

  const ColorModeDetailsView({
    super.key,
    required this.callbackUpdateProductLedMode,
  });

  @override
  State<ColorModeDetailsView> createState() => _ColorModeDetailsViewState();
}

class _ColorModeDetailsViewState extends State<ColorModeDetailsView> {
  late ColorMode mode;

  void callbackUpdatePalette(Color newColor) {
    setState(() => mode.color = newColor);
    // context.read<LedModeGRPCBloc>().add(
    //     PartialUpdateLedModeEvent(mode: mode, fields: {"color": newColor}));
    // callbackUpdateProductLedMode(context, {"mode": mode.getAbstractRequest()});
    widget.callbackUpdateProductLedMode(
        context, {"mode": mode.getAbstractRequest()});
  }

  ColorIndicator addColorWidget(Color c) {
    return ColorIndicator(
        width: 500,
        height: 500,
        borderRadius: 0,
        color: c,
        elevation: 1,
        onSelectFocus: false,
        onSelect: () async {
          final Color newColor = await showColorPickerDialog(
            context,
            c,
            title: Text('Color Picker',
                style: Theme.of(context).textTheme.titleLarge),
            width: 40,
            height: 40,
            spacing: 0,
            runSpacing: 0,
            borderRadius: 0,
            wheelDiameter: 165,
            showColorCode: true,
            colorCodeHasColor: true,
            pickersEnabled: <ColorPickerType, bool>{
              ColorPickerType.wheel: true,
            },
            copyPasteBehavior: const ColorPickerCopyPasteBehavior(
              pasteButton: true,
              longPressMenu: true,
            ),
            actionButtons: const ColorPickerActionButtons(
              okButton: true,
              closeButton: true,
            ),
            constraints: const BoxConstraints(
                minHeight: 480, minWidth: 320, maxWidth: 320),
          );
          if (c != newColor) {
            callbackUpdatePalette(newColor);
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    mode = BlocProvider.of<LedModeGRPCBloc>(context).state.mode as ColorMode;
    return Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(
          colors: [Color(0xff2bff00), Color(0xffd3fb41)],
          stops: [0.25, 0.87],
          center: Alignment.center,
        )),
        child: addColorWidget(mode.color));
  }
}

class ColorModePreview extends StatelessWidget {
  final ColorMode mode;

  const ColorModePreview({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 10,
        child: Container(color: mode.color));
  }
}
