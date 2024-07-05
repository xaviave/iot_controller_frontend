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

  @override
  String toString() {
    return name;
  }

  CoffeeMachineRequest getRequest() {
    return CoffeeMachineRequest(
      id: id,
      name: name,
      ipPort: ipPort,
      ipAddress: ipAddress,
      categories: categories.map((x) => x.getRequest()),
      status: status.id,
      heat: heat,
      waterLevel: waterLevel.id,
      usedWaterLevel: usedWaterLevel.id,
      coffeeLevel: coffeeLevel.id,
      filterPosition: filterPosition,
      modeValue: modeValue,
    );
  }

  CoffeeMachinePartialUpdateRequest getPartialRequest(
      Map<String, dynamic> fields) {
    return CoffeeMachinePartialUpdateRequest(
      id: id,
      partialUpdateFields: fields.keys,
      name: fields["name"],
      ipPort: fields["ipPort"],
      ipAddress: fields["ipAddress"],
      categories: fields["categories"],
      status: fields["status"],
      heat: fields["heat"],
      waterLevel: fields["waterLevel"],
      usedWaterLevel: fields["usedWaterLevel"],
      coffeeLevel: fields["coffeeLevel"],
      filterPosition: fields["filterPosition"],
      modeValue: fields["modeValue"],
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
}
