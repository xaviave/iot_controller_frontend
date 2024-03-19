import 'dart:ui';

import 'package:flutter_application_1/src/models/products/led/palette.dart';

class LedMode {
  String name;

  LedMode({required this.name});
}

class ImageMode extends LedMode {
  // image = Image field
  // imageLowPixel = Image filed
  Uri image;
  Uri imageLowPixel;

  ImageMode({required super.name, required this.image, required this.imageLowPixel});
}

class VideoMode extends LedMode {
  // video = Video field
  // videoLowPixel = Video filed
  Uri video;
  Uri videoLowPixel;

  VideoMode({required super.name, required this.video, required this.videoLowPixel});
}

class ColorMode extends LedMode {
  // maybe const
  Color color;

  ColorMode({required super.name, required this.color});
}

class PatternMode extends LedMode {
  double fps;
  double blink;
  Palette palette;

  PatternMode({required super.name, required this.fps, required this.blink, required this.palette});
}
