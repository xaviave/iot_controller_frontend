import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

import 'project_details_view.dart';

class ProjectListView extends StatefulWidget {
  const ProjectListView({super.key});
  static const routeName = '/projects';

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
        listener: (BuildContext context, state) {
          context.read<ProjectGRPCBloc>().add(ServerChangedEvent(
              ProjectCommunication(
                  serverName: state.serverName, serverPort: state.serverPort)));
        },
        child: Scaffold(
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
          body: BlocBuilder<ProjectGRPCBloc, ProjectState>(
              builder: (context, state) {
            if (state is ProjectListInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProjectListError) {
              print(state.message);
              return Center(
                child: Text(state.message),
              );
            } else if (state is ProjectListSuccess) {
              return ListView.builder(
                  restorationId: 'ProjectListView',
                  itemCount: state.projects.length,
                  itemBuilder: (BuildContext context, int index) {
                    String name = state.projects.keys.elementAt(index);

                    return ListTile(
                      title: Text(name.capitalize),
                      leading: const CircleAvatar(
                        foregroundImage:
                            AssetImage('assets/images/flutter_logo.png'),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectDetailsView(
                                project: state.projects[name]!),
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
            },
            tooltip: 'Refresh',
            child: const Icon(Icons.refresh),
          ),
        ));
  }
}
