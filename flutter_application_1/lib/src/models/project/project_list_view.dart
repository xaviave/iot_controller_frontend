import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/services/communication_service.dart';
import 'package:flutter_application_1/src/models/category.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/models/project/project_details_view.dart';
import 'package:flutter_application_1/src/models/status.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});
  static const routeName = '/';

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  late ProjectCommunication project_client;
  late List<Project> projects;

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
      projects = response.results
          .map((x) => Project(
                uuid: x.uuid, name: x.name, owner: x.owner,
                pubDate: DateTime.parse(x.pubDate),
                // products: x.products.map((y) => BaseProduct()).toList())
                products: [],
              ))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // var category = Category(uuid: "1", name: "test test");
    // var coffee = CoffeeMachine(
    //     uuid: "12",
    //     name: "coffee machine proto",
    //     categories: [category],
    //     status: Status.on,
    //     heat: 51.2,
    //     water_level: ContainerStatus.empty,
    //     used_water_level: ContainerStatus.empty,
    //     coffee_level: ContainerStatus.empty,
    //     filter_position: false,
    //     mode_value: 1);
    //
    // var led = LedPanel(
    //     uuid: "gw",
    //     name: "led proto",
    //     categories: [category],
    //     status: Status.off,
    //     brightness: 0.5,
    //     mode: ColorMode(color: Colors.blue, name: "blue", uuid: "uiu"));
    //
    // projects = [
    //   Project(
    //       uuid: "1",
    //       owner: 1,
    //       pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
    //       name: "product 1",
    //       products: [coffee]),
    //   Project(
    //       uuid: "2",
    //       owner: 2,
    //       pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
    //       name: "product 2",
    //       products: [led]),
    //   Project(
    //       uuid: "3",
    //       owner: 3,
    //       pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
    //       name: "product 3",
    //       products: [led, coffee])
    // ];

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
