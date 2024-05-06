import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/status.dart';

enum ContainerStatus {
  empty(id: 0),
  warning(id: 1),
  full(id: 2);

  final int id;

  const ContainerStatus({required this.id});

  factory ContainerStatus.fromId(int id) {
    return values.firstWhere((e) => e.id == id);
  }
}

class CoffeeMachine extends BaseProduct {
  Status status;
  double heat;
  ContainerStatus water_level;
  ContainerStatus used_water_level;
  ContainerStatus coffee_level;
  bool filter_position;
  int mode_value;

  CoffeeMachine({
    required super.id,
    required super.name,
    required super.categories,
    required this.status,
    required this.heat,
    required this.water_level,
    required this.used_water_level,
    required this.coffee_level,
    required this.filter_position,
    required this.mode_value,
  });

  CoffeeMachineRequest getRequest() {
    return CoffeeMachineRequest(
      id: id,
      name: name,
      categories: categories.map((x) => x.getRequest()).toList(),
      status: status.id,
      heat: heat,
      waterLevel: water_level.id,
      usedWaterLevel: used_water_level.id,
      coffeeLevel: coffee_level.id,
      filterPosition: filter_position,
      modeValue: mode_value,
    );
  }

  @override
  BaseProductRequest getAbstractRequest() {
    return BaseProductRequest()..coffeeMachine = getRequest();
  }

  static CoffeeMachine fromResponse(CoffeeMachineResponse r) {
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
}
