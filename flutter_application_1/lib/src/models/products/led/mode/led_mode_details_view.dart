import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/mode/color_mode_details.dart';
import 'package:flutter_application_1/src/models/products/led/mode/image_mode_details.dart';
import 'package:flutter_application_1/src/models/products/led/mode/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/mode/pattern_mode_details.dart';
import 'package:flutter_application_1/src/models/products/led/mode/video_mode_details.dart';

class LedModeDetailsView extends StatelessWidget {
  LedMode mode;
  final Function(LedMode) callbackUpdateMode;

  LedModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (mode is PatternMode) {
        return PatternModeDetailsView(
            mode: mode as PatternMode, callbackUpdateMode: callbackUpdateMode);
      }
      if (mode is ImageMode) {
        return ImageModeDetailsView(
            mode: mode as ImageMode, callbackUpdateMode: callbackUpdateMode);
      }
      if (mode is VideoMode) {
        return VideoModeDetailsView(
            mode: mode as VideoMode, callbackUpdateMode: callbackUpdateMode);
      }
      if (mode is ColorMode) {
        return ColorModeDetailsView(
            mode: mode as ColorMode, callbackUpdateMode: callbackUpdateMode);
      }
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: const Text(
          "No mode",
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
      );
    });
  }
}
