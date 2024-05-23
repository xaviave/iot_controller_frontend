import 'dart:ui';

import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/ui/utils/color.dart';

import 'led_mode.dart';

class PatternMode extends LedMode {
  static const int maxPaletteLength = 30;

  double fps;
  double blink;
  List<Color> palette;

  PatternMode(
      {required super.id,
      required super.name,
      required this.fps,
      required this.blink,
      required this.palette});

  PatternModeRequest getRequest() {
    return PatternModeRequest(
      id: id,
      name: name,
      fps: fps * 60,
      blink: blink * 60,
      palette: palette.map((c) => hexFromColor(c)),
    );
  }

  @override
  LedModeRequest getAbstractRequest() {
    return LedModeRequest()..patternMode = getRequest();
  }

  static PatternMode fromResponse(PatternModeResponse r) {
    return PatternMode(
        id: r.id,
        name: r.name,
        fps: r.fps / 60,
        blink: r.blink / 60,
        palette: r.palette.map((c) => colorFromHex(c)).toList());
  }
}
