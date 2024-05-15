import 'package:flutter/material.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/services/communication_service.dart';

class CategoryProvider with ChangeNotifier {
  Map<String, Category> _categories = {};
  Map<String, Category> get categories => _categories;
  late CategoryCommunication categoryGrpcClient;

  CategoryProvider(SettingsState state) {
    categoryGrpcClient = CategoryCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
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
