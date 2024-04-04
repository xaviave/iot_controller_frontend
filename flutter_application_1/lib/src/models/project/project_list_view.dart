import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/models/project/project_details_view.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});
  static const routeName = '/';

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  late ProjectCommunication project_client;
  // need a better way to init this without flickering
  late List<Project> projects = [];

  @override
  void initState() {
    super.initState();
    project_client = ProjectCommunication();
    project_client.init();
    get_project_list();
  }

  void get_project_list() async {
    var response = await project_client.List();
    setState(() {
      projects = response.results.map((x) => Project.from_response(x)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List projects'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'ProjectListView',
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          final item = projects[index];

          return ListTile(
            title: Text('Project ${item.name}'),
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProjectDetailsView(),
                  settings: RouteSettings(
                    arguments: item,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
