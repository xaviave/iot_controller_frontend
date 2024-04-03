import 'package:flutter_application_1/protos/backend.pb.dart';

class Category {
  String id;
  String name;

  Category({required this.id, required this.name});

  CategoryRequest get_request() {
    return CategoryRequest(name: name);
  }
}
