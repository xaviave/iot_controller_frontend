import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/src/models/category.dart';

class BaseProduct {
  String uuid;
  String name;
  List<Category> categories;

  BaseProduct({required this.uuid, required this.name, required this.categories});

  dynamic get_request() {
    return BaseProductRequest(
        uuid: uuid,
        name: name,
        categories: categories.map((x) => x.uuid).toList()
    );
  }
}
