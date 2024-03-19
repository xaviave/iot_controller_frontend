import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project/project.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final project = ModalRoute
        .of(context)!
        .settings
        .arguments as Project;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Details'),
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
                )
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  project.owner,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )
            ),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Text(
                  DateFormat.yMMMd().format(project.pubDate),
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                )
            )
          ],
        ),
      ),
    );
  }
}
