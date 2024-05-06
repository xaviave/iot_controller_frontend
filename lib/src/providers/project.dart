import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/services/communication_service.dart';

class ProjectProvider with ChangeNotifier {
  Map<String, Project> _projects = {};
  Map<String, Project> get projects => _projects;
  late ProjectCommunication projectGrpcClient;

  ProjectProvider() {
    projectGrpcClient = ProjectCommunication();
    projectGrpcClient.init();
    getProjectItems();
  }

  Future<void> getProjectItems() async {
    var response = await projectGrpcClient.List();
    _projects = {
      for (var e in response.results) e.name: Project.fromResponse(e)
    };
    notifyListeners();
  }

  Future<void> updateProject(Project project) async {
    var response = await projectGrpcClient.Update(project);
    notifyListeners();
  }
}
