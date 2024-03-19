import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:flutter_application_1/src/models/project/project_details_view.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

/// Displays a list of Projects.
class ProjectListView extends StatelessWidget {
  ProjectListView({super.key, this.items = const []});

  static const routeName = '/';

  List<Project> items;

  @override
  Widget build(BuildContext context) {
    items = [
      Project(
          id: "1",
          owner: "xavou 1",
          pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
          name: "product 1",
          products: ["oui"]),
      Project(
          id: "2",
          owner: "xavou 2",
          pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
          name: "product 2",
          products: []),
      Project(
          id: "3",
          owner: "xavou 3",
          pubDate: DateTime.parse('1969-07-20 20:18:04Z'),
          name: "product 3",
          products: [])
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
            title: Text('Project ${item.name}'),
            leading: const CircleAvatar(
              // Display the Flutter Logo image asset.
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProjectDetailsView(),
                  // Pass the arguments as part of the RouteSettings. The
                  // DetailScreen reads the arguments from these settings.
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
