import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/category.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/mode/led_mode.dart';
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
      return CoffeeMachine(
        id: r.id,
        name: r.name,
        categories:
            r.categories.map((c) => Category(id: c.id, name: c.name)).toList(),
        status: Status.fromId(r.status),
        heat: r.heat,
        water_level: ContainerStatus.fromId(r.waterLevel),
        used_water_level: ContainerStatus.fromId(r.usedWaterLevel),
        coffee_level: ContainerStatus.fromId(r.coffeeLevel),
        filter_position: r.filterPosition,
        mode_value: r.modeValue,
      );
    }
    LedPanelResponse r = request.ledPanel;
    return LedPanel(
        id: r.id,
        name: r.name,
        categories:
            r.categories.map((c) => Category(id: c.id, name: c.name)).toList(),
        status: Status.fromId(r.status),
        brightness: r.brightness,
        mode: LedMode.from_response(r.mode));
  }
}
