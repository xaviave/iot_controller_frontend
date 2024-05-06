import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/led_mode.dart';

import 'color_mode_details_view.dart';
import 'image_mode_details_view.dart';
import 'pattern_mode_details_view.dart';
import 'video_mode_details_view.dart';

class LedModeDetailsView extends StatelessWidget {
  final LedMode mode;
  final Function(LedMode, BuildContext) callbackUpdateMode;

  const LedModeDetailsView(
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
