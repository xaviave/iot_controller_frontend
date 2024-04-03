// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/products/led/palette.dart';

abstract class LedMode {
  int id;
  String name;

  LedMode({required this.id, required this.name});
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
}

class ColorMode extends LedMode {
  // maybe const
  Color color;

  ColorMode({required super.id, required super.name, required this.color});

  ColorModeRequest get_request() {
    return ColorModeRequest(name: name);
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
}
