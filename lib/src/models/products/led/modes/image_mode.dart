import 'package:iot_controller/protos/backend.pb.dart';

import 'led_mode.dart';

class ImageMode extends LedMode {
  // image = Image field
  // imageLowPixel = Image filed
  Uri image;
  Uri imageLowPixel;

  ImageMode(
      {required super.id,
      required super.name,
      required this.image,
      required this.imageLowPixel});

  ImageModeRequest getRequest() {
    return ImageModeRequest(id: id, name: name);
  }

  @override
  LedModeRequest getAbstractRequest() {
    return LedModeRequest()..imageMode = getRequest();
  }
}
