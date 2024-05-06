import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/led_mode.dart';
import 'package:iot_controller/src/services/communication_service.dart';

class LedModeProvider with ChangeNotifier {
  Map<String, LedMode> _modes = {};
  Map<String, ColorMode> _colorModes = {};
  Map<String, PatternMode> _patternModes = {};
  Map<String, LedMode> get modes => _modes;
  Map<String, ColorMode> get colorModes => _colorModes;
  Map<String, PatternMode> get patternModes => _patternModes;

  late ColorModeCommunication colorModeGrpcClient;
  late PatternModeCommunication patternModeGrpcClient;
  // late ImageModeCommunication imageModeGrpcClient;
  // late VideoModeCommunication videoModeGrpcClient;

  LedModeProvider() {
    colorModeGrpcClient = ColorModeCommunication();
    patternModeGrpcClient = PatternModeCommunication();
    // imageModeGrpcClient = ImageModeCommunication();
    // videoModeGrpcClient = VideoModeCommunication();

    colorModeGrpcClient.init();
    patternModeGrpcClient.init();
    // imageModeGrpcClient.init();
    // videoModeGrpcClient.init();
    getLedModeItems();
  }

  Future<void> getPatternModeItems() async {
    var responsePattern = await patternModeGrpcClient.List();
    _patternModes = {
      for (var e in responsePattern.results) e.name: PatternMode.fromResponse(e)
    };
    notifyListeners();
  }

  Future<void> getColorModeItems() async {
    var responseColor = await colorModeGrpcClient.List();
    _colorModes = {
      for (var e in responseColor.results) e.name: ColorMode.fromResponse(e)
    };
    notifyListeners();
  }

  Future<void> getLedModeItems() async {
    getPatternModeItems();
    getColorModeItems();
    _modes = {..._patternModes, ..._colorModes};
    notifyListeners();
  }

  Future<void> updateMode(LedMode mode) async {
    if (mode is ColorMode) {
      var response = await colorModeGrpcClient.Update(mode);
    } else {
      var response = await patternModeGrpcClient.Update(mode as PatternMode);
    }
    notifyListeners();
  }
}
