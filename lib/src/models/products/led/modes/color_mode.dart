import 'dart:ui';

import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/ui/utils/color.dart';

import 'led_mode.dart';

class ColorMode extends LedMode {
  Color color;

  ColorMode({required super.id, required super.name, required this.color});

  static ColorMode fromHex(int id, String name, String hexColor) {
    return ColorMode(id: id, name: name, color: colorFromHex(hexColor));
  }

  ColorModeRequest getRequest() {
    return ColorModeRequest(id: id, name: name, color: hexFromColor(color));
  }

  @override
  LedModeRequest getAbstractRequest() {
    return LedModeRequest()..colorMode = getRequest();
  }

  static ColorMode fromResponse(ColorModeResponse r) {
    return ColorMode.fromHex(r.id, r.name, r.color);
  }

  @override
  String toString() {
    return name;
  }
}
