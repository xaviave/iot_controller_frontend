import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart' as project_bloc;
import 'package:iot_controller/src/blocs/user.dart' as user_bloc;
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/project/project_create_view.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

import 'project_details_view.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});
  static const routeName = '/projects';

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
          return Scaffold(
              appBar: AppBar(
                title: const Text('List of projects'),
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
              body: BlocBuilder<project_bloc.ProjectGRPCBloc,
                  project_bloc.ProjectState>(builder: (context, state) {
                print("Project list view $state");
                if (state is project_bloc.ProjectListInitial ||
                    state is project_bloc.ProjectLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is project_bloc.ProjectListSuccess ||
                    state is project_bloc.GetProjectSuccess ||
                    state is project_bloc.RetrieveProjectSuccess ||
                    state is project_bloc.UpdateProjectSuccess ||
                    state is project_bloc.CreateProjectSuccess ||
                    state is project_bloc.DestroyProjectSuccess) {
                  return ListView.builder(
                      restorationId: 'ProjectListView',
                      itemCount: state.projects.length,
                      itemBuilder: (BuildContext context, int index) {
                        Project project = state.projects.elementAt(index);

                        return ListTile(
                          title: Text(project.toString().capitalize),
                          leading: const CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/images/flutter_logo.png'),
                          ),
                          onTap: () {
                            context.read<project_bloc.ProjectGRPCBloc>().add(
                                project_bloc.GetProjectEvent(
                                    project: project,
                                    projects: state.projects));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProjectDetailsView(),
                                settings: const RouteSettings(),
                              ),
                            );
                          },
                        );
                      });
                } else {
                  return Center(
                    child: Text("Error: ${state.message}"),
                  );
                }
              }),
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
        }));
  }
}
