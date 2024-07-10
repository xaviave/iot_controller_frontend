import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class ProjectEvent {}

class ServerChangedEvent extends ProjectEvent {
  final ProjectCommunication projectGrpcClient;

  ServerChangedEvent(this.projectGrpcClient);
}

class GetProjectListEvent extends ProjectEvent {}

class UpdateProjectEvent extends ProjectEvent {
  final Project project;
  final List<Project> projects;

  UpdateProjectEvent({required this.project, required this.projects});
}

class PartialUpdateProjectEvent extends ProjectEvent {
  final Project project;
  Map<String, dynamic> fields;
  final List<Project> projects;

  PartialUpdateProjectEvent(
      {required this.project, required this.fields, required this.projects});
}

class GetProjectEvent extends ProjectEvent {
  final Project project;
  final List<Project> projects;

  GetProjectEvent({required this.project, required this.projects});
}

class CreateProjectEvent extends ProjectEvent {
  final Project project;
  final List<Project> projects;

  CreateProjectEvent({required this.project, required this.projects});
}

class DestroyProjectEvent extends ProjectEvent {
  final int projectId;
  final List<Project> projects;

  DestroyProjectEvent({required this.projectId, required this.projects});
}

sealed class ProjectState {
  const ProjectState();

  String get message => "";
  Project? get project => null;
  List<Project> get projects => [];
}

class ProjectListInitial extends ProjectState {}

class ProjectListLoading extends ProjectState {}

class ProjectListSuccess extends ProjectState {
  final List<Project> _projects;

  const ProjectListSuccess(this._projects);

  @override
  List<Project> get projects => _projects;
}

class ProjectListError extends ProjectState {
  final String _message;

  const ProjectListError(this._message);

  @override
  String get message => _message;
}

class ProjectLoading extends ProjectState {}

class GetProjectSuccess extends ProjectState {
  final Project _project;
  final List<Project> _projects;

  const GetProjectSuccess(this._project, this._projects);

  @override
  Project? get project => _project;
  @override
  List<Project> get projects => _projects;
}

class GetProjectError extends ProjectState {
  final String _message;

  const GetProjectError(this._message);

  @override
  String get message => _message;
}

class UpdateProjectSuccess extends ProjectState {
  final String _message;
  final Project _project;
  final List<Project> _projects;

  const UpdateProjectSuccess(this._message, this._project, this._projects);

  @override
  String get message => _message;
  @override
  Project? get project => _project;
  @override
  List<Project> get projects => _projects;
}

class UpdateProjectError extends ProjectState {
  final String _message;

  const UpdateProjectError(this._message);

  @override
  String get message => _message;
}

class CreateProjectSuccess extends ProjectState {
  final String _message;
  final Project _project;
  final List<Project> _projects;

  const CreateProjectSuccess(this._message, this._project, this._projects);

  @override
  String get message => _message;
  @override
  Project? get project => _project;
  @override
  List<Project> get projects => _projects;
}

class CreateProjectError extends ProjectState {
  final String _message;

  const CreateProjectError(this._message);

  @override
  String get message => _message;
}

class DestroyProjectSuccess extends ProjectState {
  final String _message;
  final List<Project> _projects;

  const DestroyProjectSuccess(this._message, this._projects);

  @override
  String get message => _message;
  @override
  List<Project> get projects => _projects;
}

class DestroyProjectError extends ProjectState {
  final String _message;

  const DestroyProjectError(this._message);

  @override
  String get message => _message;
}

class ProjectGRPCBloc extends Bloc<ProjectEvent, ProjectState> {
  late ProjectCommunication projectGrpcClient;

  ProjectGRPCBloc(SettingsState state) : super(ProjectListInitial()) {
    projectGrpcClient = ProjectCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
    on<ServerChangedEvent>(onServerChangedEvent);

    on<GetProjectEvent>(onGetProjectEvent);
    on<GetProjectListEvent>(onGetProjectListEvent);
    on<CreateProjectEvent>(onCreateProjectEvent);
    on<DestroyProjectEvent>(onDestroyProjectEvent);
    on<PartialUpdateProjectEvent>(onPartialUpdateProjectEvent);

    add(GetProjectListEvent());
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<ProjectState> emit) {
    projectGrpcClient = event.projectGrpcClient;
    add(GetProjectListEvent());
  }

  void onGetProjectEvent(
      GetProjectEvent event, Emitter<ProjectState> emit) async {
    emit(GetProjectSuccess(event.project, event.projects));
  }

  void onGetProjectListEvent(
      GetProjectListEvent event, Emitter<ProjectState> emit) async {
    emit(ProjectListLoading());
    try {
      var response = await projectGrpcClient.list();
      emit(ProjectListSuccess(
          [for (var e in response.results) Project.fromResponse(e)]));
    } catch (error) {
      emit(ProjectListError(error.toString()));
    }
  }

  void onUpdateProjectEvent(
      UpdateProjectEvent event, Emitter<ProjectState> emit) async {
    emit(ProjectLoading());
    try {
      var response = await projectGrpcClient.update(event.project);
      event.projects[event.projects
              .indexWhere((element) => element.id == event.project.id)] =
          event.project;

      emit(UpdateProjectSuccess(
          "success", Project.fromResponse(response), event.projects));
    } catch (error) {
      emit(UpdateProjectError(error.toString()));
    }
  }

  void onPartialUpdateProjectEvent(
      PartialUpdateProjectEvent event, Emitter<ProjectState> emit) async {
    emit(ProjectLoading());
    try {
      ProjectResponse response =
          await projectGrpcClient.partialUpdate(event.project, event.fields);

      Project p = Project.fromResponse(response);
      event.projects[
          event.projects.indexWhere((element) => element.id == p.id)] = p;
      emit(UpdateProjectSuccess("success", p, event.projects));
    } catch (error) {
      emit(UpdateProjectError(error.toString()));
    }
  }

  void onCreateProjectEvent(
      CreateProjectEvent event, Emitter<ProjectState> emit) async {
    emit(ProjectLoading());
    try {
      ProjectResponse response = await projectGrpcClient.create(event.project);

      Project p = Project.fromResponse(response);
      event.projects.add(p);
      emit(CreateProjectSuccess("success", p, event.projects));
    } catch (error) {
      emit(CreateProjectError(error.toString()));
    }
  }

  void onDestroyProjectEvent(
      DestroyProjectEvent event, Emitter<ProjectState> emit) async {
    emit(ProjectLoading());
    try {
      await projectGrpcClient.destroy(event.projectId);
      event.projects.removeWhere((item) => item.id == event.projectId);
      emit(DestroyProjectSuccess(
          "Successfully deleted project", event.projects));
    } catch (error) {
      emit(DestroyProjectError(error.toString()));
    }
  }
}
