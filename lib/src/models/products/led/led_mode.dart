import 'dart:ui';

import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/ui/utils/color.dart';

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

class ImageMode extends LedMode {
  // image = Image field
  // image_low_pixel = Image filed
  Uri image;
  Uri image_low_pixel;

  ImageMode(
      {required super.id,
      required super.name,
      required this.image,
      required this.image_low_pixel});

  ImageModeRequest getRequest() {
    return ImageModeRequest(id: id, name: name);
  }

  @override
  LedModeRequest getAbstractRequest() {
    return LedModeRequest()..imageMode = getRequest();
  }
}

class VideoMode extends LedMode {
  // video = Video field
  // video_low_pixel = Video filed
  Uri video;
  Uri video_low_pixel;

  VideoMode(
      {required super.id,
      required super.name,
      required this.video,
      required this.video_low_pixel});

  VideoModeRequest getRequest() {
    return VideoModeRequest(id: id, name: name);
  }

  @override
  LedModeRequest getAbstractRequest() {
    return LedModeRequest()..videoMode = getRequest();
  }
}

class ColorMode extends LedMode {
  // maybe const
  Color color;

  ColorMode({required super.id, required super.name, required this.color});

  static ColorMode fromHex(int id, String name, String hex_color) {
    return ColorMode(id: id, name: name, color: colorFromHex(hex_color));
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
}

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
      fps: fps,
      blink: blink,
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
        fps: r.fps,
        blink: r.blink,
        palette: r.palette.map((c) => colorFromHex(c)).toList());
  }
}
