import 'package:flutter_application_1/src/models/products/base_product_list_view.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project/project.dart';

class ProjectDetailsView extends StatelessWidget {
  final Project project;

  const ProjectDetailsView({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  project.name,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  project.owner.toString(),
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  DateFormat.yMMMd().format(project.pubDate),
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )),
            Expanded(child: BaseProductListView(products: project.products)),
          ],
        ),
      ),
    );
  }
}
