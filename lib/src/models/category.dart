import 'package:iot_controller/protos/backend.pb.dart';

class Category {
  int id;
  String name;

  Category({required this.id, required this.name});

  CategoryRequest getRequest() {
    return CategoryRequest(name: name);
  }

  static Category fromResponse(CategoryResponse r) {
    return Category(id: r.id, name: r.name);
  }
}
