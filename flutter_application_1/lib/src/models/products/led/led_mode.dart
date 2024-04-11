// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/products/led/palette.dart';

abstract class LedMode {
  int id;
  String name;

  LedMode({required this.id, required this.name});
  LedModeRequest get_abstract_request() {
    return LedModeRequest();
  }

  static LedMode from_response(LedModeResponse request) {
    if (request.whichMode() == LedModeResponse_Mode.patternMode) {
      PatternModeResponse r = request.patternMode;
      return PatternMode(
          id: r.id,
          name: r.name,
          fps: r.fps,
          blink: r.blink,
          palette: Palette.fromName(r.palette));
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
      return ColorMode.fromHex(r.id, r.name, r.color);
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

  ImageModeRequest get_request() {
    return ImageModeRequest(name: name);
  }

  @override
  LedModeRequest get_abstract_request() {
    return LedModeRequest()..imageMode = get_request();
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

  VideoModeRequest get_request() {
    return VideoModeRequest(name: name);
  }

  @override
  LedModeRequest get_abstract_request() {
    return LedModeRequest()..videoMode = get_request();
  }
}

class ColorMode extends LedMode {
  // maybe const
  Color color;

  ColorMode({required super.id, required super.name, required this.color});

  static ColorMode fromHex(int id, String name, String hex_color) {
    hex_color = hex_color.toUpperCase().replaceAll("#", "");
    if (hex_color.length == 6) {
      hex_color = "FF" + hex_color;
    }
    return ColorMode(
        id: id, name: name, color: Color(int.parse(hex_color, radix: 16)));
  }

  ColorModeRequest get_request() {
    return ColorModeRequest(name: name);
  }

  @override
  LedModeRequest get_abstract_request() {
    return LedModeRequest()..colorMode = get_request();
  }
}

class PatternMode extends LedMode {
  double fps;
  double blink;
  Palette palette;

  PatternMode(
      {required super.id,
      required super.name,
      required this.fps,
      required this.blink,
      required this.palette});

  PatternModeRequest get_request() {
    return PatternModeRequest(name: name);
  }

  @override
  LedModeRequest get_abstract_request() {
    return LedModeRequest()..patternMode = get_request();
  }
}
