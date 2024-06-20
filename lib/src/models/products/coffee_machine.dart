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
  ContainerStatus waterLevel;
  ContainerStatus usedWaterLevel;
  ContainerStatus coffeeLevel;
  bool filterPosition;
  int modeValue;

  CoffeeMachine({
    required super.id,
    required super.name,
    required super.ipPort,
    required super.ipAddress,
    required super.categories,
    required this.status,
    required this.heat,
    required this.waterLevel,
    required this.usedWaterLevel,
    required this.coffeeLevel,
    required this.filterPosition,
    required this.modeValue,
  });

  CoffeeMachineRequest getRequest() {
    return CoffeeMachineRequest(
      id: id,
      name: name,
      ipPort: ipPort,
      ipAddress: ipAddress,
      categories: categories.map((x) => x.getRequest()).toList(),
      status: status.id,
      heat: heat,
      waterLevel: waterLevel.id,
      usedWaterLevel: usedWaterLevel.id,
      coffeeLevel: coffeeLevel.id,
      filterPosition: filterPosition,
      modeValue: modeValue,
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
      ipPort: r.ipPort,
      ipAddress: r.ipAddress,
      categories:
          r.categories.map((c) => Category(id: c.id, name: c.name)).toList(),
      status: Status.fromId(r.status),
      heat: r.heat,
      waterLevel: ContainerStatus.fromId(r.waterLevel),
      usedWaterLevel: ContainerStatus.fromId(r.usedWaterLevel),
      coffeeLevel: ContainerStatus.fromId(r.coffeeLevel),
      filterPosition: r.filterPosition,
      modeValue: r.modeValue,
    );
  }

  @override
  String toString() {
    return name;
  }
}
