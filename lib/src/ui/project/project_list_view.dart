import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';

import 'project_details_view.dart';
import 'package:object_3d/object_3d.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class Renderer3D extends StatefulWidget {
  const Renderer3D({super.key});

  @override
  State<Renderer3D> createState() => _Renderer3DState();
}

class _Renderer3DState extends State<Renderer3D> {
  // (uncomment line in Object3D constructor)
  // ignore: unused_element
  Face _fresnel(Face face) {
    final color = Colors.blue;
    final light = Vector3(0.0, 0.0, 100.0).normalized();
    double ln1 = light.dot(face.normal);
    double s1 = 1.0 + face.v1.normalized().dot(face.normal);
    double s2 = 1.0 + face.v2.normalized().dot(face.normal);
    double s3 = 1.0 + face.v3.normalized().dot(face.normal);
    double power = 2;

    Color c = Color.fromRGBO(
        (color.red + pow(s1, power).round()).clamp(0, 255).toInt(),
        (color.green + pow(s2, power).round()).clamp(0, 255).toInt(),
        (color.blue + pow(s3, power).round()).clamp(0, 255).toInt(),
        1.0 - ln1.abs());
    return face..setColors(c, c, c);
  }

  @override
  Widget build(BuildContext context) {
    return
      // SizedBox(
      // width: 200,
      //   height: 900,
      //   child:
        Center(
          child: Object3D(
            size: Size(1000, 1000),
            path: "assets/models/Minidisc/files/minidisc.obj",
             faceColorFunc: _fresnel,
          ),
        // )
    );
  }
}

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
            title: const Text('List projects'),
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
          body: Column(children: [
            Renderer3D(),
            // BlocBuilder<ProjectGRPCBloc, ProjectState>(
            //     builder: (context, state) {
            //   if (state is ProjectListInitial) {
            //     return const Center(child: CircularProgressIndicator());
            //   } else if (state is ProjectListError) {
            //     return Center(
            //       child: Text("Error: ${state.message}"),
            //     );
            //   } else if (state is ProjectListSuccess) {
            //     return ListView.builder(
            //         restorationId: 'ProjectListView',
            //         itemCount: state.projects.length,
            //         itemBuilder: (BuildContext context, int index) {
            //           String name = state.projects.keys.elementAt(index);
            //
            //           return ListTile(
            //             title: Text('Project $name'),
            //             leading: const CircleAvatar(
            //               foregroundImage:
            //                   AssetImage('assets/images/flutter_logo.png'),
            //             ),
            //             onTap: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => ProjectDetailsView(
            //                       project: state.projects[name]!),
            //                   settings: const RouteSettings(),
            //                 ),
            //               );
            //             },
            //           );
            //         });
            //   } else {
            //     return const SizedBox(); // Handle unexpected states
            //   }
            // }),
          ]),
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
