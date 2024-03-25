// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/products/led/palette.dart';

class LedMode {
  String uuid;
  String name;

  LedMode({required this.uuid, required this.name});

  LedModeRequest get_request() {
    return LedModeRequest(name: name);
  }
}

class ImageMode extends LedMode {
  // image = Image field
  // image_low_pixel = Image filed
  Uri image;
  Uri image_low_pixel;

  ImageMode(
      {required super.uuid,
      required super.name,
      required this.image,
      required this.image_low_pixel});
}

class VideoMode extends LedMode {
  // video = Video field
  // video_low_pixel = Video filed
  Uri video;
  Uri video_low_pixel;

  VideoMode(
      {required super.uuid,
      required super.name,
      required this.video,
      required this.video_low_pixel});
}

class ColorMode extends LedMode {
  // maybe const
  Color color;

  ColorMode({required super.uuid, required super.name, required this.color});
}

class PatternMode extends LedMode {
  double fps;
  double blink;
  Palette palette;

  PatternMode(
      {required super.uuid,
      required super.name,
      required this.fps,
      required this.blink,
      required this.palette});
}
