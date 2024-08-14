import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart' as project_bloc;
import 'package:iot_controller/src/blocs/user.dart' as user_bloc;
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/project/project_create_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});
  static const routeName = 'projects';

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  Future<bool> refreshProjectList(BuildContext context) async {
    context
        .read<project_bloc.ProjectGRPCBloc>()
        .add(project_bloc.GetProjectListEvent());
    return true;
  }

  Widget headerView(
    BuildContext context,
    Widget titleView,
    Widget bodyView,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: titleView,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.push("/settings");
              },
            ),
          ],
        ),
        body: bodyView,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CreatePopup(
              formName: "project",
              heroTag: "project_create_button",
              form: const ProjectForm(),
              onPressedCallBack: (_) {},
            ),
            const SizedBox(height: 10),
            RefreshPopup(
              heroTag: "project_refresh_button",
              onPressedCallBack: refreshProjectList,
            )
          ],
        ));
  }

  Widget projectBuild(BuildContext context, user_bloc.UserState userState) {
    return headerView(context, const Text('GMX IOT Controller'),
        BlocBuilder<project_bloc.ProjectGRPCBloc, project_bloc.ProjectState>(
            builder: (context, state) {
      if (state is project_bloc.ProjectListInitial ||
          state is project_bloc.ProjectLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is project_bloc.ProjectListSuccess ||
          state is project_bloc.GetProjectSuccess ||
          state is project_bloc.RetrieveProjectSuccess ||
          state is project_bloc.UpdateProjectSuccess ||
          state is project_bloc.CreateProjectSuccess ||
          state is project_bloc.DestroyProjectSuccess) {
        int axisCount = (MediaQuery.of(context).size.width ~/ 200).toInt();
        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: [
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Projects",
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ))),
              const SizedBox(height: 20),
              Expanded(
                  child: MasonryGridView.count(
                      crossAxisCount: max(axisCount, 1),
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      itemCount: state.projects.length,
                      itemBuilder: (context, index) {
                        Project p = state.projects[index];

                        return InkWell(
                            onTap: () {
                              context.read<project_bloc.ProjectGRPCBloc>().add(
                                  project_bloc.GetProjectEvent(
                                      project: p, projects: state.projects));
                              context.push("/project_detail");
                            },
                            // move it / reorder
                            // onLongPress: ,
                            child: AspectRatio(
                                aspectRatio: (12 / p.name.length).clamp(0.9, 2),
                                child: Container(
                                    padding: const EdgeInsets.all(24),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFF846AFF),
                                            Color(0xFF755EE8),
                                            Colors.purpleAccent,
                                            Colors.amber,
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(p.name.capitalize,
                                                    overflow:
                                                        TextOverflow.visible,
                                                    style: const TextStyle(
                                                      fontSize: 24,
                                                      color: Colors.white,
                                                    )))),
                                        const Expanded(
                                            child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Icon(Icons
                                                    .keyboard_arrow_down))),
                                      ],
                                    ))));
                      }))
            ]));
      } else {
        return Center(
          child: Text("Error: ${state.message}"),
        );
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
        listenWhen: (previousState, state) {
          return previousState.serverPort != state.serverPort ||
              previousState.serverName != state.serverName;
        },
        listener: (_, state) {
          context.read<project_bloc.ProjectGRPCBloc>().add(
              project_bloc.ServerChangedEvent(ProjectCommunication(
                  serverName: state.serverName, serverPort: state.serverPort)));
        },
        child: BlocBuilder<user_bloc.UserGRPCBloc, user_bloc.UserState>(
            buildWhen: (_, state) {
          // print("ici ca doit reagir aux users");
          return state is user_bloc.AddActiveUserEventSuccess ||
              state is user_bloc.AddActiveUserEventError;
        }, builder: (context, state) {
          return projectBuild(context, state);
        }));
  }
}
