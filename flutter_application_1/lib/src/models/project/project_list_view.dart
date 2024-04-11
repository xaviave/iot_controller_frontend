import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/models/project/project_provider.dart';
import 'package:flutter_application_1/src/models/project/project_details_view.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:provider/provider.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});
  static const routeName = '/';

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  @override
  Widget build(BuildContext context) {
    final projectProvider = Provider.of<ProjectProvider>(context);
    // List<Project> projects = projectProvider.projects;
    print(projectProvider.projects);
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
        itemCount: projectProvider.projects.length,
        itemBuilder: (BuildContext context, int index) {
          final project = projectProvider.projects[index];

          return ListTile(
            title: Text('Project ${project.name}'),
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProjectDetailsView(project: project),
                  settings: const RouteSettings(),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          projectProvider.getProjectItems();
        },
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
