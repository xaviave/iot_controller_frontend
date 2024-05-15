import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class ProjectEvent {}

class ServerChangedEvent extends ProjectEvent {
  final ProjectCommunication client;

  ServerChangedEvent(this.client);
}

class GetProjectListEvent extends ProjectEvent {
  GetProjectListEvent();
}

sealed class ProjectState {
  const ProjectState();

  Map<String, Project> get projects => {};
}

class ProjectListInitial extends ProjectState {}

class ProjectListSuccess extends ProjectState {
  final Map<String, Project> _projects;

  const ProjectListSuccess(this._projects);

  @override
  Map<String, Project> get projects => _projects;
}

class ProjectListError extends ProjectState {
  final String message;

  const ProjectListError(this.message);

  String get errorMessage => message;
}

class ProjectGRPCBloc extends Bloc<ProjectEvent, ProjectState> {
  late ProjectCommunication client;

  ProjectGRPCBloc(SettingsState state) : super(ProjectListInitial()) {
    client = ProjectCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
    on<ServerChangedEvent>(onServerChangedEvent);
    on<GetProjectListEvent>(onGetProjectListEvent);
    add(GetProjectListEvent());
    print("enterered ProjectGRPCBloc");
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<ProjectState> emit) {
    client = event.client;
    print("enterered onServerChangedEvent");
    add(GetProjectListEvent());
  }

  void onGetProjectListEvent(
      GetProjectListEvent event, Emitter<ProjectState> emit) async {
    try {
      var response = await client.List();
      emit(ProjectListSuccess(
          {for (var e in response.results) e.name: Project.fromResponse(e)}));
    } catch (error) {
      emit(ProjectListError(error.toString()));
    }
  }
}
