import 'package:iot_controller/protos/backend.pb.dart';

import 'led_mode.dart';

class VideoMode extends LedMode {
  // video = Video field
  // videoLowPixel = Video filed
  Uri video;
  Uri videoLowPixel;

  VideoMode(
      {required super.id,
      required super.name,
      required this.video,
      required this.videoLowPixel});

  VideoModeRequest getRequest() {
    return VideoModeRequest(id: id, name: name);
  }

  @override
  LedModeRequest getAbstractRequest() {
    return LedModeRequest()..videoMode = getRequest();
  }
}
