import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
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
  final Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;

  const LedModeDetailsView({
    super.key,
    required this.callbackUpdateProductLedMode,
  });

  @override
  Widget build(BuildContext context) {
    // LedModeState state = BlocProvider.of<LedModeGRPCBloc>(context).state;
    return BlocBuilder<LedModeGRPCBloc, LedModeState>(
        builder: (context, state) {
      // return Builder(builder: (context) {
      if (state is LedModeListInitial || state is LedModeLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetLedModeSuccess ||
          state is RetrieveLedModeSuccess ||
          state is UpdateLedModeSuccess ||
          state is CreateLedModeSuccess) {
        if (state.mode! is PatternMode) {
          return PatternModeDetailsView(
            callbackUpdateProductLedMode: callbackUpdateProductLedMode,
          );
        } else if (state.mode! is ColorMode) {
          return ColorModeDetailsView(
            callbackUpdateProductLedMode: callbackUpdateProductLedMode,
          );
        } else {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: const Text(
              "No mode",
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          );
        }
      } else {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: const Text(
            "No mode",
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        );
      }
      // });
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
