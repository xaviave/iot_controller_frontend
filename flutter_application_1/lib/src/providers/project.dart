import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';
import 'package:intl/intl.dart';

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
      for (var e in response.results) e.name: Project.from_response(e)
    };
    notifyListeners();
  }

  Future<void> updateProject(Project project) async {
    var response = await projectGrpcClient.Update(project);
    notifyListeners();
  }
}
