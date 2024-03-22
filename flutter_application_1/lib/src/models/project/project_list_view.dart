import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/category.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/models/project/project_details_view.dart';
import 'package:flutter_application_1/src/models/status.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

/// Displays a list of Projects.
class ProjectListView extends StatelessWidget {
  ProjectListView({super.key, this.projects = const []});

  static const routeName = '/';

  List<Project> projects;

  @override
  Widget build(BuildContext context) {
    var category = Category(name: "test test");
    var coffee = CoffeeMachine(
        name: "coffee machine proto",
        categories: [category],
        status: Status.on,
        heat: 51.2,
        water_level: ContainerStatus.empty,
        used_water_level: ContainerStatus.empty,
        coffee_level: ContainerStatus.empty,
        filter_position: false,
        mode_value: 1);

    var led = LedPanel(
        name: "led proto",
        categories: [category],
        status: Status.off,
        brightness: 0.5,
        mode: ColorMode(color: Colors.blue, name: "blue"));

    projects = [
      Project(
          id: "1",
          owner: "xavou 1",
          pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
          name: "product 1",
          products: [coffee]),
      Project(
          id: "2",
          owner: "xavou 2",
          pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
          name: "product 2",
          products: [led]),
      Project(
          id: "3",
          owner: "xavou 3",
          pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
          name: "product 3",
          products: [led, coffee])
    ];
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
