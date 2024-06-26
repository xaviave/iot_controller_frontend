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
}

class UpdateProjectEvent extends ProjectEvent {
  final Project project;

  UpdateProjectEvent({required this.project});
}

class CreateProjectEvent extends ProjectEvent {
  final Project project;

  CreateProjectEvent({required this.project});
}

sealed class ProjectState {
  const ProjectState();

  List<Project> get projects => [];
}

class ProjectListInitial extends ProjectState {}

class ProjectListSuccess extends ProjectState {
  final List<Project> _projects;

  const ProjectListSuccess(this._projects);

  List<Project> get projects => _projects;
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

class CreateProjectEventSuccess extends ProjectState {
  final String message;

  const CreateProjectEventSuccess(this.message);

  String get successMessage => message;
}

class CreateProjectEventError extends ProjectState {
  final String message;

  const CreateProjectEventError(this.message);

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
          [for (var e in response.results) Project.fromResponse(e)]));
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

  void onCreateProjectEvent(
      CreateProjectEvent event, Emitter<ProjectState> emit) async {
    try {
      await projectGrpcClient.Create(event.project);
    } catch (error) {
      emit(CreateProjectEventError(error.toString()));
    }
  }
}
