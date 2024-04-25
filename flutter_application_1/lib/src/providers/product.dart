import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';

class BaseProductProvider with ChangeNotifier {
  Map<String, BaseProduct> _products = {};
  Map<String, LedPanel> _ledPanels = {};
  Map<String, CoffeeMachine> _coffeeMachines = {};
  Map<String, BaseProduct> get products => _products;
  Map<String, LedPanel> get ledPanels => _ledPanels;
  Map<String, CoffeeMachine> get coffeeMachines => _coffeeMachines;

  late LedPanelCommunication ledPanelGrpcClient;
  late CoffeeMachineCommunication coffeeMachineGrpcClient;

  BaseProductProvider() {
    ledPanelGrpcClient = LedPanelCommunication();
    coffeeMachineGrpcClient = CoffeeMachineCommunication();
    ledPanelGrpcClient.init();
    coffeeMachineGrpcClient.init();
    getBaseProductItems();
  }

  Future<void> getLedPanelItems() async {
    var responseLedPanel = await ledPanelGrpcClient.List();
    _ledPanels = {
      for (var e in responseLedPanel.results) e.name: LedPanel.from_response(e)
    };
    notifyListeners();
  }

  Future<void> getCoffeeMachineItems() async {
    var responseCoffeeMachine = await coffeeMachineGrpcClient.List();
    _coffeeMachines = {
      for (var e in responseCoffeeMachine.results)
        e.name: CoffeeMachine.from_response(e)
    };
    notifyListeners();
  }

  Future<void> getBaseProductItems() async {
    getLedPanelItems();
    getCoffeeMachineItems();
    _products = {..._ledPanels, ..._coffeeMachines};
    notifyListeners();
  }

  Future<void> updateProduct(BaseProduct product) async {
    if (product is LedPanel) {
      var response = await ledPanelGrpcClient.Update(product);
    } else {
      var response =
          await coffeeMachineGrpcClient.Update(product as CoffeeMachine);
    }
    notifyListeners();
  }
}
