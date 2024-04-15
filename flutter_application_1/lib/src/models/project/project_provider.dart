import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';

class ProjectProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  // can use it to count active products

  Map<String, Project> _projects = {};
  Map<String, Project> get projects => _projects;
  late ProjectCommunication project_grpc_client;

  ProjectProvider() {
    project_grpc_client = ProjectCommunication();
    project_grpc_client.init();
    getProjectItems();
  }

  Future<void> getProjectItems() async {
    var response = await project_grpc_client.List();
    _projects = {
      for (var e in response.results) e.name: Project.from_response(e)
    };
    notifyListeners();
  }

  Future<void> updateProject(Project project) async {
    _projects[project.name] = project;
    notifyListeners();
  }

  Future<void> updateProjectProduct(
      Project project, BaseProduct product) async {
    projects[project.name]?.products[product.name] = product;
    updateProject(project);
    notifyListeners();
  }
}
