import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/category.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/status.dart';

abstract class BaseProduct {
  int id;
  String name;
  List<Category> categories;

  BaseProduct({required this.id, required this.name, required this.categories});

  BaseProductRequest get_abstract_request() {
    return BaseProductRequest();
  }

  static BaseProduct from_response(BaseProductResponse request) {
    if (request.whichProduct() == BaseProductResponse_Product.coffeeMachine) {
      CoffeeMachineResponse r = request.coffeeMachine;
      return CoffeeMachine.from_response(r);
    }
    LedPanelResponse r = request.ledPanel;
    return LedPanel.from_response(r);
  }
}
