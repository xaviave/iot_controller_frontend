// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/status.dart';

enum ContainerStatus {
  empty(id: 0),
  warning(id: 1),
  full(id: 2);

  const ContainerStatus({required this.id});

  final int id;
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
}
