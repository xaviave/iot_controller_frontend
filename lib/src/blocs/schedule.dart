import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/celery_tasks/clocked_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/crontab_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/interval_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/solar_schedule.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class ScheduleEvent {}

class ServerChangedEvent extends ScheduleEvent {
  final ClockedScheduleCommunication clockedScheduleGrpcClient;
  final CrontabScheduleCommunication crontabScheduleGrpcClient;
  final IntervalScheduleCommunication intervalScheduleGrpcClient;
  final SolarScheduleCommunication solarScheduleGrpcClient;

  ServerChangedEvent({
    required this.clockedScheduleGrpcClient,
    required this.crontabScheduleGrpcClient,
    required this.intervalScheduleGrpcClient,
    required this.solarScheduleGrpcClient,
  });
}

class GetScheduleListEvent extends ScheduleEvent {
  final List<Schedule>? schedules;

  GetScheduleListEvent(this.schedules);
}

class GetScheduleEvent extends ScheduleEvent {
  final Schedule schedule;
  final List<Schedule> schedules;

  GetScheduleEvent({required this.schedule, required this.schedules});
}

class RetrieveScheduleEvent extends ScheduleEvent {
  final Schedule schedule;
  final List<Schedule> schedules;

  RetrieveScheduleEvent({required this.schedule, required this.schedules});
}

class CreateScheduleEvent extends ScheduleEvent {
  final Schedule schedule;
  final List<Schedule> schedules;

  CreateScheduleEvent({required this.schedule, required this.schedules});
}

class UpdateScheduleEvent extends ScheduleEvent {
  final Schedule schedule;
  final List<Schedule> schedules;

  UpdateScheduleEvent({required this.schedule, required this.schedules});
}

class DestroyScheduleEvent extends ScheduleEvent {
  final Schedule schedule;
  final List<Schedule> schedules;

  DestroyScheduleEvent({required this.schedule, required this.schedules});
}

sealed class ScheduleState {
  const ScheduleState();

  String get message => "";
  Schedule? get schedule => null;
  List<Schedule> get schedules => [];
}

class ScheduleListInitial extends ScheduleState {}

class ScheduleLoading extends ScheduleState {}

class ScheduleListSuccess extends ScheduleState {
  final List<Schedule> _schedules;

  const ScheduleListSuccess(this._schedules);

  @override
  List<Schedule> get schedules => _schedules;
}

class ScheduleListError extends ScheduleState {
  final String _message;

  const ScheduleListError(this._message);

  @override
  String get message => _message;
}

class GetScheduleSuccess extends ScheduleState {
  final Schedule _schedule;
  final List<Schedule> _schedules;

  const GetScheduleSuccess(this._schedule, this._schedules);

  @override
  Schedule? get schedule => _schedule;
  @override
  List<Schedule> get schedules => _schedules;
}

class GetScheduleError extends ScheduleState {
  final String _message;

  const GetScheduleError(this._message);

  @override
  String get message => _message;
}

class RetrieveScheduleSuccess extends ScheduleState {
  final Schedule _schedule;
  final List<Schedule> _schedules;

  const RetrieveScheduleSuccess(this._schedule, this._schedules);

  @override
  Schedule? get schedule => _schedule;
  @override
  List<Schedule> get schedules => _schedules;
}

class RetrieveScheduleError extends ScheduleState {
  final String _message;

  const RetrieveScheduleError(this._message);

  @override
  String get message => _message;
}

class CreateScheduleSuccess extends ScheduleState {
  final String _message;
  final Schedule _schedule;
  final List<Schedule> _schedules;

  const CreateScheduleSuccess(this._message, this._schedule, this._schedules);

  @override
  String get message => _message;
  @override
  Schedule? get schedule => _schedule;
  @override
  List<Schedule> get schedules => _schedules;
}

class CreateScheduleError extends ScheduleState {
  final String _message;

  const CreateScheduleError(this._message);

  @override
  String get message => _message;
}

class UpdateScheduleSuccess extends ScheduleState {
  final String _message;
  final Schedule _schedule;
  final List<Schedule> _schedules;

  const UpdateScheduleSuccess(this._message, this._schedule, this._schedules);

  @override
  String get message => _message;
  @override
  Schedule? get schedule => _schedule;
  @override
  List<Schedule> get schedules => _schedules;
}

class UpdateScheduleError extends ScheduleState {
  final String _message;
  final String scheduleName;

  const UpdateScheduleError(this._message, this.scheduleName);

  @override
  String get message => _message;
}

class DestroyScheduleSuccess extends ScheduleState {
  final String _message;
  final List<Schedule> _schedules;

  const DestroyScheduleSuccess(this._message, this._schedules);

  @override
  String get message => _message;
  @override
  List<Schedule> get schedules => _schedules;
}

class DestroyScheduleError extends ScheduleState {
  final String _message;

  const DestroyScheduleError(this._message);

  @override
  String get message => _message;
}

class ScheduleGRPCBloc extends Bloc<ScheduleEvent, ScheduleState> {
  late ClockedScheduleCommunication clockedScheduleGrpcClient;
  late CrontabScheduleCommunication crontabScheduleGrpcClient;
  late IntervalScheduleCommunication intervalScheduleGrpcClient;
  late SolarScheduleCommunication solarScheduleGrpcClient;

  ScheduleGRPCBloc(SettingsState state) : super(ScheduleListInitial()) {
    on<ServerChangedEvent>(onServerChangedEvent);
    add(ServerChangedEvent(
      clockedScheduleGrpcClient: ClockedScheduleCommunication(
          serverName: state.serverName, serverPort: state.serverPort),
      crontabScheduleGrpcClient: CrontabScheduleCommunication(
          serverName: state.serverName, serverPort: state.serverPort),
      intervalScheduleGrpcClient: IntervalScheduleCommunication(
          serverName: state.serverName, serverPort: state.serverPort),
      solarScheduleGrpcClient: SolarScheduleCommunication(
          serverName: state.serverName, serverPort: state.serverPort),
    ));

    on<GetScheduleListEvent>(onGetScheduleListEvent);
    on<GetScheduleEvent>(onGetScheduleEvent);
    on<CreateScheduleEvent>(onCreateScheduleEvent);
    on<UpdateScheduleEvent>(onUpdateScheduleEvent);
    on<DestroyScheduleEvent>(onDestroyScheduleEvent);
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<ScheduleState> emit) {
    clockedScheduleGrpcClient = event.clockedScheduleGrpcClient;
    crontabScheduleGrpcClient = event.crontabScheduleGrpcClient;
    intervalScheduleGrpcClient = event.intervalScheduleGrpcClient;
    solarScheduleGrpcClient = event.solarScheduleGrpcClient;
  }

  Future<List<Schedule>> getClockedScheduleItems() async {
    var responseCoffeeMachine = await clockedScheduleGrpcClient.list();
    return responseCoffeeMachine.results
        .map((e) => ClockedSchedule.fromResponse(e))
        .toList();
  }

  Future<List<Schedule>> getCrontabScheduleItems() async {
    var responseLedPanel = await crontabScheduleGrpcClient.list();
    return responseLedPanel.results
        .map((e) => CrontabSchedule.fromResponse(e))
        .toList();
  }

  Future<List<Schedule>> getIntervalScheduleItems() async {
    var responseLedPanel = await intervalScheduleGrpcClient.list();
    return responseLedPanel.results
        .map((e) => IntervalSchedule.fromResponse(e))
        .toList();
  }

  Future<List<Schedule>> getSolarScheduleItems() async {
    var responseLedPanel = await solarScheduleGrpcClient.list();
    return responseLedPanel.results
        .map((e) => SolarSchedule.fromResponse(e))
        .toList();
  }

  void onGetScheduleListEvent(
      GetScheduleListEvent event, Emitter<ScheduleState> emit) async {
    try {
      // if empty, query, else use the schedules given
      if (event.schedules == null) {
        emit(ScheduleLoading());
        emit(ScheduleListSuccess([
          ...await getClockedScheduleItems(),
          ...await getCrontabScheduleItems(),
          ...await getIntervalScheduleItems(),
          ...await getSolarScheduleItems(),
        ]));
      } else {
        emit(ScheduleListSuccess(event.schedules!));
      }
    } catch (error) {
      emit(ScheduleListError(error.toString()));
    }
  }

  void onGetScheduleEvent(
      GetScheduleEvent event, Emitter<ScheduleState> emit) async {
    emit(GetScheduleSuccess(event.schedule, event.schedules));
  }

  void onRetrieveScheduleEvent(
      RetrieveScheduleEvent event, Emitter<ScheduleState> emit) async {
    try {
      Schedule s;
      if (event.schedule is ClockedSchedule) {
        ClockedScheduleResponse response =
            await clockedScheduleGrpcClient.retrieve(event.schedule.id);

        s = ClockedSchedule.fromResponse(response);
      } else if (event.schedule is CrontabSchedule) {
        CrontabScheduleResponse response =
            await crontabScheduleGrpcClient.retrieve(event.schedule.id);

        s = CrontabSchedule.fromResponse(response);
      } else if (event.schedule is IntervalSchedule) {
        IntervalScheduleResponse response =
            await intervalScheduleGrpcClient.retrieve(event.schedule.id);

        s = IntervalSchedule.fromResponse(response);
      } else {
        SolarScheduleResponse response =
            await solarScheduleGrpcClient.retrieve(event.schedule.id);

        s = SolarSchedule.fromResponse(response);
      }

      event.schedules[
          event.schedules.indexWhere((element) => element.id == s.id)] = s;
      emit(RetrieveScheduleSuccess(s, event.schedules));
    } catch (error) {
      emit(RetrieveScheduleError(error.toString()));
    }
  }

  void onCreateScheduleEvent(
      CreateScheduleEvent event, Emitter<ScheduleState> emit) async {
    try {
      Schedule s;
      if (event.schedule is ClockedSchedule) {
        var response = await clockedScheduleGrpcClient
            .create(event.schedule as ClockedSchedule);
        s = ClockedSchedule.fromResponse(response);
      } else if (event.schedule is CrontabSchedule) {
        var response = await crontabScheduleGrpcClient
            .create(event.schedule as CrontabSchedule);
        s = CrontabSchedule.fromResponse(response);
      } else if (event.schedule is IntervalSchedule) {
        var response = await intervalScheduleGrpcClient
            .create(event.schedule as IntervalSchedule);
        s = IntervalSchedule.fromResponse(response);
      } else {
        var response = await solarScheduleGrpcClient
            .create(event.schedule as SolarSchedule);
        s = SolarSchedule.fromResponse(response);
      }
      emit(CreateScheduleSuccess("success", s, event.schedules..add(s)));
    } catch (error) {
      emit(CreateScheduleError(error.toString()));
    }
  }

  void onUpdateScheduleEvent(
      UpdateScheduleEvent event, Emitter<ScheduleState> emit) async {
    // emit(ScheduleLoading());
    try {
      Schedule s;
      if (event.schedule is ClockedSchedule) {
        var response = await clockedScheduleGrpcClient
            .update(event.schedule as ClockedSchedule);
        s = ClockedSchedule.fromResponse(response);
      } else if (event.schedule is CrontabSchedule) {
        var response = await crontabScheduleGrpcClient
            .update(event.schedule as CrontabSchedule);
        s = CrontabSchedule.fromResponse(response);
      } else if (event.schedule is IntervalSchedule) {
        var response = await intervalScheduleGrpcClient
            .update(event.schedule as IntervalSchedule);
        s = IntervalSchedule.fromResponse(response);
      } else {
        var response = await solarScheduleGrpcClient
            .update(event.schedule as SolarSchedule);
        s = SolarSchedule.fromResponse(response);
      }

      event.schedules[
          event.schedules.indexWhere((element) => element.id == s.id)] = s;
      emit(UpdateScheduleSuccess("success", s, event.schedules));
    } catch (error) {
      emit(UpdateScheduleError(error.toString(), event.schedule.toString()));
    }
  }

  void onDestroyScheduleEvent(
      DestroyScheduleEvent event, Emitter<ScheduleState> emit) async {
    try {
      if (event.schedule is ClockedSchedule) {
        await clockedScheduleGrpcClient.destroy(event.schedule.id);
      } else if (event.schedule is CrontabSchedule) {
        await crontabScheduleGrpcClient.destroy(event.schedule.id);
      } else if (event.schedule is IntervalSchedule) {
        await intervalScheduleGrpcClient.destroy(event.schedule.id);
      } else {
        await solarScheduleGrpcClient.destroy(event.schedule.id);
      }

      event.schedules.removeWhere((item) => item.id == event.schedule.id);
      emit(DestroyScheduleSuccess(
          "Successfully deleted schedule", event.schedules));
    } catch (error) {
      emit(DestroyScheduleError(error.toString()));
    }
  }
}
