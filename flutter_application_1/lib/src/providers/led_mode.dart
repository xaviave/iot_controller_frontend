import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';

class LedModeProvider with ChangeNotifier {
  Map<String, LedMode> _modes = {};
  Map<String, LedMode> get modes => _modes;
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

  Future<void> getLedModeItems() async {
    var responseColor = await colorModeGrpcClient.List();
    var responsePattern = await patternModeGrpcClient.List();
    _modes = {
      for (var e in responseColor.results) e.name: ColorMode.from_response(e)
    };
    _modes.addAll({
      for (var e in responsePattern.results)
        e.name: PatternMode.from_response(e)
    });
    notifyListeners();
  }
}
