import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/project.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:provider/provider.dart';

import 'project_details_view.dart';

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
          String name = projectProvider.projects.keys.elementAt(index);

          return ListTile(
            title: Text('Project $name'),
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProjectDetailsView(
                      project: projectProvider.projects[name]!),
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
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
