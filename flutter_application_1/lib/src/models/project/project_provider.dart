import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProjectProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  // can use it to count active products
  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;

  List<Project> _projects = [];
  List<Project> get projects => _projects;
  late ProjectCommunication project_grpc_client;

  ProjectProvider() {
    project_grpc_client = ProjectCommunication();
    project_grpc_client.init();
    getProjectItems();
  }

  Future<void> getProjectItems() async {
    var response = await project_grpc_client.List();
    _projects = response.results.map((x) => Project.from_response(x)).toList();
    notifyListeners();
  }
}
