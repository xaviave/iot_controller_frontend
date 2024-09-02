import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/celery_tasks/periodic_task.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class PeriodicTaskEvent {}

class ServerChangedEvent extends PeriodicTaskEvent {
  final PeriodicTaskCommunication periodicTaskGrpcClient;

  ServerChangedEvent(this.periodicTaskGrpcClient);
}

class GetPeriodicTaskListEvent extends PeriodicTaskEvent {
  final List<PeriodicTask>? tasks;

  GetPeriodicTaskListEvent(this.tasks);
}

class GetPeriodicTaskEvent extends PeriodicTaskEvent {
  final PeriodicTask task;
  final List<PeriodicTask> tasks;

  GetPeriodicTaskEvent({required this.task, required this.tasks});
}

class QueryPeriodicTaskEvent extends PeriodicTaskEvent {
  final int classId;
  final String classType;
  final List<PeriodicTask> tasks;

  QueryPeriodicTaskEvent(
      {required this.classType, required this.classId, required this.tasks});
}

class RetrievePeriodicTaskEvent extends PeriodicTaskEvent {
  final String periodicTaskName;
  final List<PeriodicTask> tasks;

  RetrievePeriodicTaskEvent(
      {required this.periodicTaskName, required this.tasks});
}

class CreatePeriodicTaskEvent extends PeriodicTaskEvent {
  final PeriodicTask task;
  final List<PeriodicTask> tasks;

  CreatePeriodicTaskEvent({required this.task, required this.tasks});
}

class UpdatePeriodicTaskEvent extends PeriodicTaskEvent {
  final PeriodicTask task;
  final List<PeriodicTask> tasks;

  UpdatePeriodicTaskEvent({required this.task, required this.tasks});
}

class PartialUpdatePeriodicTaskEvent extends PeriodicTaskEvent {
  final PeriodicTask task;
  Map<String, dynamic> fields;
  final List<PeriodicTask> tasks;

  PartialUpdatePeriodicTaskEvent(
      {required this.task, required this.fields, required this.tasks});
}

class DestroyPeriodicTaskEvent extends PeriodicTaskEvent {
  final String periodicTaskName;
  final List<PeriodicTask> tasks;

  DestroyPeriodicTaskEvent(
      {required this.periodicTaskName, required this.tasks});
}

sealed class PeriodicTaskState {
  const PeriodicTaskState();

  String get message => "";
  PeriodicTask? get task => null;
  List<PeriodicTask> get tasks => [];
  List<PeriodicTask> get queryTasks => [];
}

class PeriodicTaskListInitial extends PeriodicTaskState {}

class PeriodicTaskLoading extends PeriodicTaskState {}

class PeriodicTaskListSuccess extends PeriodicTaskState {
  final List<PeriodicTask> _tasks;

  const PeriodicTaskListSuccess(this._tasks);

  @override
  List<PeriodicTask> get tasks => _tasks;
}

class PeriodicTaskListError extends PeriodicTaskState {
  final String _message;

  const PeriodicTaskListError(this._message);

  @override
  String get message => _message;
}

class GetPeriodicTaskSuccess extends PeriodicTaskState {
  final PeriodicTask _task;
  final List<PeriodicTask> _tasks;

  const GetPeriodicTaskSuccess(this._task, this._tasks);

  @override
  PeriodicTask? get task => _task;
  @override
  List<PeriodicTask> get tasks => _tasks;
}

class GetPeriodicTaskError extends PeriodicTaskState {
  final String _message;

  const GetPeriodicTaskError(this._message);

  @override
  String get message => _message;
}

class QueryPeriodicTaskSuccess extends PeriodicTaskState {
  final List<PeriodicTask> _tasks;
  final List<PeriodicTask> _queryTasks;

  const QueryPeriodicTaskSuccess(this._tasks, this._queryTasks);

  @override
  List<PeriodicTask> get tasks => _tasks;
  @override
  List<PeriodicTask> get queryTasks => _queryTasks;
}

class QueryPeriodicTaskError extends PeriodicTaskState {
  final String _message;

  const QueryPeriodicTaskError(this._message);

  @override
  String get message => _message;
}

class RetrievePeriodicTaskSuccess extends PeriodicTaskState {
  final PeriodicTask _task;
  final List<PeriodicTask> _tasks;

  const RetrievePeriodicTaskSuccess(this._task, this._tasks);

  @override
  PeriodicTask? get task => _task;
  @override
  List<PeriodicTask> get tasks => _tasks;
}

class RetrievePeriodicTaskError extends PeriodicTaskState {
  final String _message;

  const RetrievePeriodicTaskError(this._message);

  @override
  String get message => _message;
}

class CreatePeriodicTaskSuccess extends PeriodicTaskState {
  final String _message;
  final PeriodicTask _task;
  final List<PeriodicTask> _tasks;

  const CreatePeriodicTaskSuccess(this._message, this._task, this._tasks);

  @override
  String get message => _message;
  @override
  PeriodicTask? get task => _task;
  @override
  List<PeriodicTask> get tasks => _tasks;
}

class CreatePeriodicTaskError extends PeriodicTaskState {
  final String _message;

  const CreatePeriodicTaskError(this._message);

  @override
  String get message => _message;
}

class UpdatePeriodicTaskSuccess extends PeriodicTaskState {
  final String _message;
  final PeriodicTask _task;
  final List<PeriodicTask> _tasks;

  const UpdatePeriodicTaskSuccess(this._message, this._task, this._tasks);

  @override
  String get message => _message;
  @override
  PeriodicTask? get task => _task;
  @override
  List<PeriodicTask> get tasks => _tasks;
}

class UpdatePeriodicTaskError extends PeriodicTaskState {
  final String _message;

  const UpdatePeriodicTaskError(this._message);

  @override
  String get message => _message;
}

class DestroyPeriodicTaskSuccess extends PeriodicTaskState {
  final String _message;
  final List<PeriodicTask> _tasks;

  const DestroyPeriodicTaskSuccess(this._message, this._tasks);

  @override
  String get message => _message;
  @override
  List<PeriodicTask> get tasks => _tasks;
}

class DestroyPeriodicTaskError extends PeriodicTaskState {
  final String _message;

  const DestroyPeriodicTaskError(this._message);

  @override
  String get message => _message;
}

class PeriodicTaskGRPCBloc extends Bloc<PeriodicTaskEvent, PeriodicTaskState> {
  late PeriodicTaskCommunication periodicTaskGrpcClient;

  PeriodicTaskGRPCBloc(SettingsState state) : super(PeriodicTaskListInitial()) {
    periodicTaskGrpcClient = PeriodicTaskCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
    on<ServerChangedEvent>(onServerChangedEvent);

    on<GetPeriodicTaskListEvent>(onGetPeriodicTaskListEvent);
    on<GetPeriodicTaskEvent>(onGetPeriodicTaskEvent);
    on<QueryPeriodicTaskEvent>(onQueryPeriodicTaskEvent);
    on<RetrievePeriodicTaskEvent>(onRetrievePeriodicTaskEvent);
    on<CreatePeriodicTaskEvent>(onCreatePeriodicTaskEvent);
    on<UpdatePeriodicTaskEvent>(onUpdatePeriodicTaskEvent);
    on<PartialUpdatePeriodicTaskEvent>(onPartialUpdatePeriodicTaskEvent);
    on<DestroyPeriodicTaskEvent>(onDestroyPeriodicTaskEvent);

    add(GetPeriodicTaskListEvent(null));
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<PeriodicTaskState> emit) {
    periodicTaskGrpcClient = event.periodicTaskGrpcClient;
    add(GetPeriodicTaskListEvent(null));
  }

  void onGetPeriodicTaskListEvent(
      GetPeriodicTaskListEvent event, Emitter<PeriodicTaskState> emit) async {
    try {
      if (event.tasks == null) {
        emit(PeriodicTaskLoading());
        var response = await periodicTaskGrpcClient.list();
        emit(PeriodicTaskListSuccess(
            [for (var e in response.results) PeriodicTask.fromResponse(e)]));
      } else {
        emit(PeriodicTaskListSuccess(event.tasks!));
      }
    } catch (error) {
      emit(PeriodicTaskListError(error.toString()));
    }
  }

  void onGetPeriodicTaskEvent(
      GetPeriodicTaskEvent event, Emitter<PeriodicTaskState> emit) async {
    emit(GetPeriodicTaskSuccess(event.task, event.tasks));
  }

  void onQueryPeriodicTaskEvent(
      QueryPeriodicTaskEvent event, Emitter<PeriodicTaskState> emit) async {
    print(
        "${event.classId} ${event.classType} ${event.tasks} ${event.tasks.where((y) {
      var dict = json.decode(y.kwargs);
      return int.parse(dict["class_id"]) == event.classId &&
          dict["class_type"] == event.classType;
    }).toList()}");
    if (event.tasks.isEmpty) {
      emit(QueryPeriodicTaskSuccess(event.tasks, []));
    }
    emit(QueryPeriodicTaskSuccess(
        event.tasks,
        event.tasks.where((y) {
          var dict = json.decode(y.kwargs);
          return int.parse(dict["class_id"]) == event.classId &&
              dict["class_type"] == event.classType;
        }).toList()));
  }

  void onRetrievePeriodicTaskEvent(
      RetrievePeriodicTaskEvent event, Emitter<PeriodicTaskState> emit) async {
    try {
      PeriodicTaskResponse response =
          await periodicTaskGrpcClient.retrieve(event.periodicTaskName);

      PeriodicTask p = PeriodicTask.fromResponse(response);
      event.tasks[event.tasks
          .indexWhere((element) => element.name == event.periodicTaskName)] = p;
      emit(RetrievePeriodicTaskSuccess(p, event.tasks));
    } catch (error) {
      emit(RetrievePeriodicTaskError(error.toString()));
    }
  }

  void onCreatePeriodicTaskEvent(
      CreatePeriodicTaskEvent event, Emitter<PeriodicTaskState> emit) async {
    emit(PeriodicTaskLoading());
    try {
      PeriodicTaskResponse response =
          await periodicTaskGrpcClient.create(event.task);
      PeriodicTask p = PeriodicTask.fromResponse(response);

      emit(CreatePeriodicTaskSuccess("success", p, event.tasks..add(p)));
    } catch (error) {
      emit(CreatePeriodicTaskError(error.toString()));
    }
  }

  void onUpdatePeriodicTaskEvent(
      UpdatePeriodicTaskEvent event, Emitter<PeriodicTaskState> emit) async {
    emit(PeriodicTaskLoading());
    try {
      var response = await periodicTaskGrpcClient.update(event.task);
      event.tasks[event.tasks
              .indexWhere((element) => element.name == event.task.name)] =
          event.task;

      emit(UpdatePeriodicTaskSuccess(
          "success", PeriodicTask.fromResponse(response), event.tasks));
    } catch (error) {
      emit(UpdatePeriodicTaskError(error.toString()));
    }
  }

  void onPartialUpdatePeriodicTaskEvent(PartialUpdatePeriodicTaskEvent event,
      Emitter<PeriodicTaskState> emit) async {
    emit(PeriodicTaskLoading());
    try {
      PeriodicTaskResponse response =
          await periodicTaskGrpcClient.partialUpdate(event.task, event.fields);

      PeriodicTask p = PeriodicTask.fromResponse(response);
      event.tasks[event.tasks.indexWhere((element) => element.name == p.name)] =
          p;
      emit(UpdatePeriodicTaskSuccess("success", p, event.tasks));
    } catch (error) {
      emit(UpdatePeriodicTaskError(error.toString()));
    }
  }

  void onDestroyPeriodicTaskEvent(
      DestroyPeriodicTaskEvent event, Emitter<PeriodicTaskState> emit) async {
    emit(PeriodicTaskLoading());
    try {
      await periodicTaskGrpcClient.destroy(event.periodicTaskName);
      event.tasks.removeWhere((item) => item.name == event.periodicTaskName);
      emit(DestroyPeriodicTaskSuccess(
          "Successfully deleted periodicTask", event.tasks));
    } catch (error) {
      emit(DestroyPeriodicTaskError(error.toString()));
    }
  }
}
