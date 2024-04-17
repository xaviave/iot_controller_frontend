import 'package:flutter_application_1/protos/backend.pb.dart';

class Category {
  int id;
  String name;

  Category({required this.id, required this.name});

  CategoryRequest get_request() {
    return CategoryRequest(name: name);
  }

  static Category from_response(CategoryResponse r) {
    return Category(id: r.id, name: r.name);
  }
}
