import "package:intl/intl.dart";
import "package:go_router/go_router.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:iot_controller/src/blocs/periodic_task.dart";
import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/blocs/project.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/project.dart";
import "package:iot_controller/src/ui/celery_task/periodic_task_list_view.dart";
import "package:iot_controller/src/ui/customColors.dart";
import "package:iot_controller/src/ui/products/base_product/base_product_create_view.dart";
import "package:iot_controller/src/ui/products/base_product/base_product_list_view.dart";
import "package:iot_controller/src/ui/utils/capitalize.dart";
import "package:iot_controller/src/ui/utils/popup/create_popup.dart";
import "package:iot_controller/src/ui/utils/popup/delete_popup.dart";
import "package:iot_controller/src/ui/utils/popup/refresh_popup.dart";

class ProjectDetailsView extends StatefulWidget {
  const ProjectDetailsView({super.key});
  static const routeName = "project_detail";

  @override
  State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
}

class _ProjectDetailsViewState extends State<ProjectDetailsView> {
  void updateProduct(BaseProduct p) {
    ProjectState state = BlocProvider.of<ProjectGRPCBloc>(context).state;

    context.read<ProjectGRPCBloc>().add(PartialUpdateProjectEvent(
        project: state.project!,
        fields: {
          "products": [...state.project!.products, p]
        },
        projects: state.projects));
  }

  Future<bool> refreshProject(BuildContext context) async {
    ProjectState state = BlocProvider.of<ProjectGRPCBloc>(context).state;

    context.read<ProjectGRPCBloc>().add(RetrieveProjectEvent(
        projectId: state.project!.id, projects: state.projects));
    return true;
  }

  void callbackDeleteProject(BuildContext context) {
    ProjectState state = BlocProvider.of<ProjectGRPCBloc>(context).state;

    context.read<ProjectGRPCBloc>().add(DestroyProjectEvent(
        projectId: state.project!.id, projects: state.projects));
    context.pushNamed("projects");
  }

  Widget decorationBlock(BuildContext context, Widget bodyView) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
        decoration: BoxDecoration(
            color: customColors.lightBackground,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(padding: const EdgeInsets.all(16), child: bodyView));
  }

  Widget headerView(
    BuildContext context,
    ProjectState state,
    String titleView,
    Widget bodyView,
    Widget? buttons,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleView,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w900,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (state.projects == []) {
              context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
            }
            context.pop("/project_detail");
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.push("/settings");
            },
          ),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(16), child: bodyView),
      floatingActionButton: buttons ?? const SizedBox(),
    );
  }

  Widget projectBuild(BuildContext context, ProjectState state) {
    final Project project = state.project!;
    final periodicTaskState =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

    context
        .read<BaseProductGRPCBloc>()
        .add(GetBaseProductListEvent(project.products));

    context.read<PeriodicTaskGRPCBloc>().add(QueryPeriodicTaskEvent(
          classType: "Project",
          classId: state.project!.id,
          tasks: periodicTaskState.tasks,
        ));

    final Map<String, Widget> tabs = {
      "Products": BaseProductListView(
        callbackUpdateProject: updateProduct,
      ),
      "Tasks": PeriodicTaskListView(
        classType: "Project",
        classId: state.project!.id,
        onlyBody: true,
      )
    };

    return headerView(
        context,
        state,
        project.name.capitalize,
        DefaultTabController(
          length: tabs.length,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            decorationBlock(
                context,
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      "${state.project!.owner.username.toUpperCase()}'s project\n"
                      "Created on ${DateFormat.yMMMd().format(state.project!.pubDate)}",
                      style: const TextStyle(fontSize: 20),
                    ))),
            const SizedBox(height: 20),
            Expanded(
                child: decorationBlock(
              context,
              Column(children: [
                TabBar.secondary(
                    indicator: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      border: Border(
                        bottom: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 3.0),
                      ),
                    ),
                    tabs: tabs.keys
                        .map((String name) => Tab(text: name))
                        .toList()),
                const SizedBox(height: 10),
                Expanded(child: TabBarView(children: tabs.values.toList()))
              ]),
            ))
          ]),
        ),
        Column(
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
              onPressedCallBack: refreshProject,
            )
          ],
        ));
  }

  Widget errorBuild(BuildContext context, ProjectState errorState) {
    return headerView(
      context,
      errorState,
      "Error Project",
      Center(child: Text(errorState.message)),
      null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectGRPCBloc, ProjectState>(
        builder: (context, state) {
      if (state is ProjectLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetProjectSuccess ||
          state is RetrieveProjectSuccess ||
          state is UpdateProjectSuccess) {
        return projectBuild(context, state);
      } else {
        return errorBuild(context, state);
      }
    });
  }
}
