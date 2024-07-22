import 'dart:ui';

import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/ui/utils/color.dart';
import 'package:iot_controller/src/ui/utils/math.dart';

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

  @override
  String toString() {
    return name;
  }

  PatternModeRequest getRequest() {
    // fps and blink are capped to 60 from the slider itself (0-1 with 0.01 step)
    return PatternModeRequest(
      id: id,
      name: name,
      fps: truncateToDecimalPlaces(fps, 2),
      blink: truncateToDecimalPlaces(blink, 2),
      palette: palette.map((c) => hexFromColor(c)),
    );
  }

  PatternModePartialUpdateRequest getPartialRequest(
      Map<String, dynamic> fields) {
    return PatternModePartialUpdateRequest(
      id: id,
      partialUpdateFields: fields.keys,
      name: fields["name"],
      fps: fields["fps"],
      blink: fields["blink"],
      palette: fields["palette"].map((c) => hexFromColor(c)),
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
        fps: r.fps,
        blink: r.blink,
        palette: r.palette.map((c) => colorFromHex(c)).toList());
  }
}
