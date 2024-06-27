import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_list_view.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/delete_popup.dart';

class ProjectDetailsView extends StatefulWidget {
  final Project project;

  const ProjectDetailsView({super.key, required this.project});

  @override
  State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
}

class _ProjectDetailsViewState extends State<ProjectDetailsView> {
  late Project project;

  void updateProduct(BaseProduct p) {
    setState(() => project.products[p.name] = p);
  }

  Future<bool> refreshProjectList(BuildContext context) async {
    context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
    return true;
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
            Container(
                margin: const EdgeInsets.all(16),
                width: double.infinity,
                child: Text(
                  "${project.owner.username.toUpperCase()}'s project\n"
                  "Created on ${DateFormat.yMMMd().format(project.pubDate)}",
                  style: const TextStyle(fontSize: 20),
                )),
            Expanded(
                child: BaseProductListView(
                    products: project.products,
                    callbackUpdateProject: updateProduct)),
          ],
        ),
        floatingActionButton: DeletePopup(
          project: project,
          heroTag: "project_delete_button",
          onPressedCallBack: (_) {},
        ));
  }
}
