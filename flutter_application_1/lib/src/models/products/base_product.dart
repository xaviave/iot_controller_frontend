import 'package:flutter_application_1/src/models/category.dart';

class BaseProduct {
  String name;
  List<Category> categories;

  BaseProduct({required this.name, required this.categories});
}
