import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';

class BaseProductProvider with ChangeNotifier {
  Map<String, BaseProduct> _products = {};
  Map<String, BaseProduct> get products => _products;
  late CoffeeMachineCommunication coffeeMachineGrpcClient;
  late LedPanelCommunication ledPanelGrpcClient;

  BaseProductProvider() {
    ledPanelGrpcClient = LedPanelCommunication();
    coffeeMachineGrpcClient = CoffeeMachineCommunication();
    ledPanelGrpcClient.init();
    coffeeMachineGrpcClient.init();
    getBaseProductItems();
  }

  Future<void> getBaseProductItems() async {
    var responseCoffeeMachine = await coffeeMachineGrpcClient.List();
    var responseLedPanel = await ledPanelGrpcClient.List();
    _products = {
      for (var e in responseCoffeeMachine.results)
        e.name: CoffeeMachine.from_response(e)
    };
    _products.addAll({
      for (var e in responseLedPanel.results) e.name: LedPanel.from_response(e)
    });
    notifyListeners();
  }
}
