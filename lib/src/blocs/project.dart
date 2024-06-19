import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class ProjectEvent {}

class ServerChangedEvent extends ProjectEvent {
  final ProjectCommunication projectGrpcClient;

  ServerChangedEvent(this.projectGrpcClient);
}

class GetProjectListEvent extends ProjectEvent {
  GetProjectListEvent();
}

class UpdateProjectEvent extends ProjectEvent {
  final Project project;

  UpdateProjectEvent({required this.project});
}

sealed class ProjectState {
  const ProjectState();

  Map<String, Project> get projects => {};
}

class ProjectListInitial extends ProjectState {}

class ProjectListSuccess extends ProjectState {
  final Map<String, Project> _projects;

  const ProjectListSuccess(this._projects);

  Map<String, Project> get projects => _projects;
}

class ProjectListError extends ProjectState {
  final String message;

  const ProjectListError(this.message);

  String get errorMessage => message;
}

class UpdateProjectEventSuccess extends ProjectState {
  final String message;

  const UpdateProjectEventSuccess(this.message);

  String get successMessage => message;
}

class UpdateProjectEventError extends ProjectState {
  final String message;

  const UpdateProjectEventError(this.message);

  String get errorMessage => message;
}

class ProjectGRPCBloc extends Bloc<ProjectEvent, ProjectState> {
  late ProjectCommunication projectGrpcClient;

  ProjectGRPCBloc(SettingsState state) : super(ProjectListInitial()) {
    projectGrpcClient = ProjectCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
    on<ServerChangedEvent>(onServerChangedEvent);
    on<GetProjectListEvent>(onGetProjectListEvent);
    add(GetProjectListEvent());
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<ProjectState> emit) {
    projectGrpcClient = event.projectGrpcClient;
    add(GetProjectListEvent());
  }

  void onGetProjectListEvent(
      GetProjectListEvent event, Emitter<ProjectState> emit) async {
    try {
      var response = await projectGrpcClient.List();
      emit(ProjectListSuccess(
          {for (var e in response.results) e.name: Project.fromResponse(e)}));
    } catch (error) {
      emit(ProjectListError(error.toString()));
    }
  }

  void onUpdateProjectEvent(
      UpdateProjectEvent event, Emitter<ProjectState> emit) async {
    try {
      await projectGrpcClient.Update(event.project);
    } catch (error) {
      emit(UpdateProjectEventError(error.toString()));
    }
  }
}
