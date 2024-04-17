import 'package:flutter_application_1/src/models/products/base_product.dart';
import 'package:flutter_application_1/src/providers/project.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:flutter_application_1/src/ui/products/base_product/base_product_list_view.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/project.dart';
import 'package:provider/provider.dart';

class ProjectDetailsView extends StatefulWidget {
  final Project project;

  const ProjectDetailsView({super.key, required this.project});

  @override
  State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
}

class _ProjectDetailsViewState extends State<ProjectDetailsView> {
  late Project project;

  void updateProduct(BaseProduct p, BuildContext context) {
    final projectProvider = Provider.of<ProjectProvider>(context, listen: false);

    projectProvider.updateProject(project);
    setState(() => project.products[p.name] = p);
  }

  @override
  void initState() {
    super.initState();
    project = widget.project;
  }

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
            Expanded(
                child: BaseProductListView(
                    products: project.products,
                    callbackUpdateProject: updateProduct)),
          ],
        ),
      ),
    );
  }
}
