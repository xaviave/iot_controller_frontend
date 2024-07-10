import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_create_view.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_list_view.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/delete_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

class ProjectDetailsView extends StatefulWidget {
  const ProjectDetailsView({super.key});

  @override
  State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
}

class _ProjectDetailsViewState extends State<ProjectDetailsView> {
  void updateProduct(BaseProduct p) {
    ProjectState state = BlocProvider.of<ProjectGRPCBloc>(context).state;

    context.read<ProjectGRPCBloc>().add(PartialUpdateProjectEvent(
        project: state.project!,
        fields: {
          "products": {p.name: p}..addAll(state.project!.products)
        },
        projects: state.projects));
  }

  void refreshBaseProductList() {
    // context
    //     .read<ProjectGRPCBloc>()
    //     .add(RetrieveProjectEvent(projectId: projectId));
    //   need to emit a new getProjectSuccess
  }

  void callbackDeleteProject() {
    ProjectState state = BlocProvider.of<ProjectGRPCBloc>(context).state;

    context.read<ProjectGRPCBloc>().add(DestroyProjectEvent(
        projectId: state.project!.id, projects: state.projects));
    context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/projects', (Route<dynamic> route) => false);
  }

  Widget errorBuild(BuildContext context, ProjectState errorState) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Error Project",
            style: TextStyle(fontSize: 28),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
              Navigator.pop(context);
            },
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
        body: Center(child: Text(errorState.message)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectGRPCBloc, ProjectState>(
        buildWhen: (context, state) {
      // print("BuilderWhen $state detail");
      return state is ProjectLoading ||
          state is GetProjectSuccess ||
          state is GetProjectError ||
          state is UpdateProjectError ||
          state is UpdateProjectSuccess;
    }, builder: (context, state) {
      if (state is ProjectLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetProjectSuccess || state is UpdateProjectSuccess) {
        final Project project = state.project!;
        return Scaffold(
            appBar: AppBar(
              title: Text(
                project.name.capitalize,
                style: const TextStyle(fontSize: 28),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  print("here ${state.projects}");
                  if (state.projects == []) {
                    context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
                  }
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.restorablePushNamed(
                        context, SettingsView.routeName);
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
                    callbackUpdateProject: updateProduct,
                  ),
                ),
              ],
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DeletePopup(
                    name: "project",
                    objectName: project.name,
                    heroTag: "project_delete_button",
                    deleteCallBack: callbackDeleteProject,
                    onPressedCallBack: () {}),
                const SizedBox(height: 10),
                CreatePopup(
                  formName: "product",
                  heroTag: "product_create_button",
                  form: BaseProductForm(callbackUpdateProject: updateProduct),
                  onPressedCallBack: () {},
                ),
                const SizedBox(height: 10),
                RefreshPopup(
                  heroTag: "project_refresh_button",
                  onPressedCallBack: refreshBaseProductList,
                )
              ],
            ));
      } else {
        return errorBuild(context, state);
      }
    });
  }
}
