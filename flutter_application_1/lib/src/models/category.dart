import 'package:flutter_application_1/protos/backend.pb.dart';

class Category {
  String uuid;
  String name;

  Category({required this.uuid, required this.name});

  CategoryRequest get_request() {
    return CategoryRequest(name: name);
  }
}
