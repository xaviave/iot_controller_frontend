import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:intl/intl.dart";
import "package:iot_controller/src/blocs/periodic_task.dart";
import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/blocs/project.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/project.dart";
import "package:iot_controller/src/ui/celery_task/periodic_task_list_view.dart";
import "package:iot_controller/src/ui/utils/customColors.dart";
import "package:iot_controller/src/ui/products/base_product/base_product_create_view.dart";
import "package:iot_controller/src/ui/products/base_product/base_product_list_view.dart";
import "package:iot_controller/src/ui/utils/capitalize.dart";

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
        body: Padding(padding: const EdgeInsets.all(16), child: bodyView));
  }

  Widget buttonDecoration(String title, Function callbackButton,
      {Widget? callbackWidget,
      Function? callbackClosePopup,
      Function? callbackSubmit,
      bool submitButtons = true}) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            onPressed: () {
              if (callbackWidget != null) {
                callbackButton(context, title, callbackWidget,
                    callbackClosePopup, submitButtons, callbackSubmit);
              } else {
                callbackButton(context);
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 15,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            )));
  }

  void confirmationPopup(
      BuildContext context,
      String title,
      Widget callbackWidget,
      Function? callbackClosePopup,
      bool submitButtons,
      Function? callbackSubmit) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => PopScope(
            onPopInvokedWithResult: (bool didPop, _) {
              if (callbackClosePopup != null) {
                callbackClosePopup();
              }
            },
            child: AlertDialog(
                title: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
                insetPadding: const EdgeInsets.all(16),
                content: SizedBox(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  callbackWidget,
                  const SizedBox(height: 10),
                  () {
                    if (submitButtons) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (callbackSubmit != null) {
                                callbackSubmit(context);
                              }
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Submit',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }()
                ])))));
  }

  Widget projectBuild(BuildContext context, ProjectState state) {
    final Project project = state.project!;
    context
        .read<BaseProductGRPCBloc>()
        .add(GetBaseProductListEvent(project.products));

    print(state);
    final periodicTaskState =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "${state.project!.owner.username.toUpperCase()}'s project",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                      Text(
                          "Created on ${DateFormat.yMMMd().format(state.project!.pubDate)}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                    ])),
            const SizedBox(height: 10),
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
                      Expanded(
                          child: TabBarView(children: tabs.values.toList()))
                    ]))),
            const SizedBox(height: 10),
            decorationBlock(
                context,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttonDecoration("Delete Project", confirmationPopup,
                        callbackWidget: const Text("Confirm the deletion"),
                        callbackSubmit: callbackDeleteProject),
                    const SizedBox(width: 10),
                    buttonDecoration("Refresh Project", refreshProject),
                    const SizedBox(width: 10),
                    buttonDecoration("Create Product", confirmationPopup,
                        callbackWidget: Expanded(
                            child: BaseProductForm(
                                callbackUpdateProject: updateProduct)),
                        submitButtons: false),
                  ],
                )),
          ]),
        ));
  }

  Widget errorBuild(BuildContext context, ProjectState errorState) {
    return headerView(
      context,
      errorState,
      "Error Project",
      Center(child: Text(errorState.message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectGRPCBloc, ProjectState>(buildWhen: (_, state) {
      return MediaQuery.of(context).viewInsets.bottom == 0;
    }, builder: (context, state) {
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
