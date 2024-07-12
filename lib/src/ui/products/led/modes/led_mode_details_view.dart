import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/modes/color_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/image_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/video_mode.dart';

import 'color_mode_details_view.dart';
import 'image_mode_details_view.dart';
import 'pattern_mode_details_view.dart';
import 'video_mode_details_view.dart';

class LedModeDetailsView extends StatelessWidget {
  final LedMode mode;
  final Function(Map<String, dynamic>) callbackUpdateLedMode;

  const LedModeDetailsView({
    super.key,
    required this.mode,
    required this.callbackUpdateLedMode,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (mode is PatternMode) {
        return PatternModeDetailsView(
          mode: mode as PatternMode,
          callbackUpdateLedMode: callbackUpdateLedMode,
        );
      }
      // if (mode is ImageMode) {
      //   return ImageModeDetailsView(
      //       mode: mode as ImageMode);
      // }
      // if (mode is VideoMode) {
      //   return VideoModeDetailsView(
      //       mode: mode as VideoMode);
      // }
      if (mode is ColorMode) {
        return ColorModeDetailsView(
          mode: mode as ColorMode,
          callbackUpdateLedMode: callbackUpdateLedMode,
        );
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

class LedModePreview extends StatelessWidget {
  final LedMode mode;

  const LedModePreview({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (mode is PatternMode) {
        return PatternModePreview(mode: mode as PatternMode);
      }
      if (mode is ImageMode) {
        return ImageModePreview(mode: mode as ImageMode);
      }
      if (mode is VideoMode) {
        return VideoModePreview(mode: mode as VideoMode);
      }
      if (mode is ColorMode) {
        return ColorModePreview(mode: mode as ColorMode);
      }
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: const Text(
          "No preview available",
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
      );
    });
  }
}
