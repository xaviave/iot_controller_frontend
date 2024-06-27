import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart' as project_user_bloc;
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/blocs/user.dart' as user_bloc_ib;
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
        .read<project_user_bloc.ProjectGRPCBloc>()
        .add(project_user_bloc.GetProjectListEvent());
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
        listenWhen: (previousState, state) {
      return previousState.serverPort != state.serverPort ||
          previousState.serverName != state.serverName;
    }, listener: (BuildContext context, state) {
      context.read<project_user_bloc.ProjectGRPCBloc>().add(
          project_user_bloc.ServerChangedEvent(ProjectCommunication(
              serverName: state.serverName, serverPort: state.serverPort)));
    }, child: BlocBuilder<user_bloc_ib.UserGRPCBloc, user_bloc_ib.UserState>(
            builder: (context, state) {
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
          body: BlocBuilder<project_user_bloc.ProjectGRPCBloc,
              project_user_bloc.ProjectState>(builder: (context, state) {
            if (state is project_user_bloc.ProjectListInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is project_user_bloc.ProjectListError) {
              return Center(
                child: Text("Error: ${state.message}"),
              );
            } else if (state is project_user_bloc.ProjectListSuccess) {
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProjectDetailsView(project: project),
                            settings: const RouteSettings(),
                          ),
                        );
                      },
                    );
                  });
            } else {
              return const SizedBox(); // Handle unexpected states
            }
          }),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CreatePopup(
                heroTag: "project_create_button",
                formName: "project",
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
