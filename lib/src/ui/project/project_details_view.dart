import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_list_view.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

class ProjectDetailsView extends StatefulWidget {
  final Project project;

  const ProjectDetailsView({super.key, required this.project});

  @override
  State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
}

class _ProjectDetailsViewState extends State<ProjectDetailsView> {
  late Project project;

  void updateProduct(BaseProduct p) {
    //   context.read<ProjectGRPCBloc>().add(UpdateProjectEvent(
    //   project: p
    // ));
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
          title: Text(
            project.name.capitalize,
            style: const TextStyle(fontSize: 28),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.restorablePushNamed(context, SettingsView.routeName);
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // need to query the real name and no the id
            // Container(
            //     width: double.infinity,
            //     margin: const EdgeInsets.all(10),
            //     child: Text(
            //       project.owner.toString(),
            //       style: const TextStyle(fontSize: 28),
            //       textAlign: TextAlign.center,
            //     )),
            Container(
                margin: const EdgeInsets.all(16),
                width: double.infinity,
                child: Text(
                  "Created: ${DateFormat.yMMMd().format(project.pubDate)}",
                  style: const TextStyle(fontSize: 28),
                )),
            Expanded(
                child: BaseProductListView(
                    products: project.products,
                    callbackUpdateProject: updateProduct)),
          ],
        ));
  }
}
