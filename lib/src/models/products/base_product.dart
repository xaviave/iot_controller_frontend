import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';

abstract class BaseProduct {
  int id;
  String name;
  int ipPort;
  String ipAddress;
  List<Category> categories;

  BaseProduct({
    required this.id,
    required this.name,
    required this.ipAddress,
    required this.ipPort,
    required this.categories,
  });

  BaseProductRequest getAbstractRequest() {
    return BaseProductRequest();
  }

  static BaseProduct fromResponse(BaseProductResponse response) {
    if (response.whichProduct() == BaseProductResponse_Product.coffeeMachine) {
      CoffeeMachineResponse r = response.coffeeMachine;
      return CoffeeMachine.fromResponse(r);
    }
    LedPanelResponse r = response.ledPanel;
    return LedPanel.fromResponse(r);
  }

  @override
  String toString() {
    return name;
  }
}
