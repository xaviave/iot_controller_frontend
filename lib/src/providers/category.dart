import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/services/communication_service.dart';

class CategoryProvider with ChangeNotifier {
  Map<String, Category> _categories = {};
  Map<String, Category> get categories => _categories;
  late CategoryCommunication categoryGrpcClient;

  CategoryProvider() {
    categoryGrpcClient = CategoryCommunication();
    categoryGrpcClient.init();
    getCategoryItems();
  }

  Future<void> getCategoryItems() async {
    var response = await categoryGrpcClient.List();
    _categories = {
      for (var e in response.results) e.name: Category.fromResponse(e)
    };
    notifyListeners();
  }

  Future<void> updateCategory(Category project) async {
    var response = await categoryGrpcClient.Update(project);
    notifyListeners();
  }
}
