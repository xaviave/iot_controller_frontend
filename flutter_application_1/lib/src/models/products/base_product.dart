import 'package:flutter_application_1/src/models/category.dart';

abstract class BaseProduct {
  int id;
  String name;
  List<Category> categories;

  BaseProduct({required this.id, required this.name, required this.categories});
}
