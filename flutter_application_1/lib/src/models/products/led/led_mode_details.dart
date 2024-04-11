import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/color_mode_details.dart';
import 'package:flutter_application_1/src/models/products/led/image_mode_details.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/pattern_mode_details.dart';
import 'package:flutter_application_1/src/models/products/led/video_mode_details.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

class LedModeDetailsView extends StatelessWidget {
  LedMode mode;
  LedModeDetailsView({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (mode is PatternMode) {
        return PatternModeDetailsView(mode: mode as PatternMode);
      }
      if (mode is ImageMode) {
        return ImageModeDetailsView(mode: mode as ImageMode);
      }
      if (mode is VideoMode) {
        return VideoModeDetailsView(mode: mode as VideoMode);
      }
      if (mode is ColorMode) {
        return ColorModeDetailsView(mode: mode as ColorMode);
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
