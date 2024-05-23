import 'package:iot_controller/protos/backend.pb.dart';

import 'color_mode.dart';
import 'pattern_mode.dart';

abstract class LedMode {
  int id;
  String name;

  LedMode({required this.id, required this.name});
  LedModeRequest getAbstractRequest() {
    return LedModeRequest();
  }

  static LedMode fromResponse(LedModeResponse request) {
    if (request.whichMode() == LedModeResponse_Mode.patternMode) {
      PatternModeResponse r = request.patternMode;
      return PatternMode.fromResponse(r);
    }
    // else if (request.whichMode() == LedModeResponse_Mode.imageMode) {
    //   ImageModeResponse r = request as ImageModeResponse;
    //   return ImageMode(
    //     id: r.id,
    //     name: r.name,
    //   );
    // } else if (request.whichMode() == LedModeResponse_Mode.videoMode) {
    //   VideoModeResponse r = request as VideoModeResponse;
    //   return VideoMode(
    //     id: r.id,
    //     name: r.name,
    //   );
    else {
      ColorModeResponse r = request.colorMode;
      return ColorMode.fromResponse(r);
    }
  }
}
