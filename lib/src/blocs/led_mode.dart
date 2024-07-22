import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/products/led/modes/color_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class LedModeEvent {}

class ServerChangedEvent extends LedModeEvent {
  final ColorModeCommunication colorModeGrpcClient;
  final PatternModeCommunication patternModeGrpcClient;
  // final ImageModeCommunication imageModeGrpcClient;
  // final VideoModeCommunication videoModeGrpcClient;

  ServerChangedEvent({
    required this.colorModeGrpcClient,
    required this.patternModeGrpcClient,
  });
}

class GetLedModeListEvent extends LedModeEvent {
  final List<LedMode>? modes;

  GetLedModeListEvent(this.modes);
}

class GetLedModeEvent extends LedModeEvent {
  final LedMode mode;
  final List<LedMode> modes;

  GetLedModeEvent({required this.mode, required this.modes});
}

class RetrieveLedModeEvent extends LedModeEvent {
  final LedMode mode;
  final List<LedMode> modes;

  RetrieveLedModeEvent({required this.mode, required this.modes});
}

class CreateLedModeEvent extends LedModeEvent {
  final LedMode mode;
  final List<LedMode> modes;

  CreateLedModeEvent({required this.mode, required this.modes});
}

class UpdateLedModeEvent extends LedModeEvent {
  final LedMode mode;
  final List<LedMode> modes;

  UpdateLedModeEvent({required this.mode, required this.modes});
}

class PartialUpdateLedModeEvent extends LedModeEvent {
  final LedMode mode;
  Map<String, dynamic> fields;
  final List<LedMode> modes;

  PartialUpdateLedModeEvent(
      {required this.mode, required this.fields, required this.modes});
}

class DestroyLedModeEvent extends LedModeEvent {
  final LedMode mode;
  final List<LedMode> modes;

  DestroyLedModeEvent({required this.mode, required this.modes});
}

sealed class LedModeState {
  const LedModeState();

  String get message => "";
  LedMode? get mode => null;
  List<LedMode> get modes => [];
}

class LedModeListInitial extends LedModeState {}

class LedModeLoading extends LedModeState {}

class LedModeListSuccess extends LedModeState {
  final List<LedMode> _modes;

  const LedModeListSuccess(this._modes);

  @override
  List<LedMode> get modes => _modes;
}

class LedModeListError extends LedModeState {
  final String _message;

  const LedModeListError(this._message);

  @override
  String get message => _message;
}

class GetLedModeSuccess extends LedModeState {
  final LedMode _mode;
  final List<LedMode> _modes;

  const GetLedModeSuccess(this._mode, this._modes);

  @override
  LedMode? get mode => _mode;
  @override
  List<LedMode> get modes => _modes;
}

class GetLedModeError extends LedModeState {
  final String _message;

  const GetLedModeError(this._message);

  @override
  String get message => _message;
}

class RetrieveLedModeSuccess extends LedModeState {
  final LedMode _mode;
  final List<LedMode> _modes;

  const RetrieveLedModeSuccess(this._mode, this._modes);

  @override
  LedMode? get mode => _mode;
  @override
  List<LedMode> get modes => _modes;
}

class RetrieveLedModeError extends LedModeState {
  final String _message;

  const RetrieveLedModeError(this._message);

  @override
  String get message => _message;
}

class CreateLedModeSuccess extends LedModeState {
  final String _message;
  final LedMode _mode;
  final List<LedMode> _modes;

  const CreateLedModeSuccess(this._message, this._mode, this._modes);

  @override
  String get message => _message;
  @override
  LedMode? get mode => _mode;
  @override
  List<LedMode> get modes => _modes;
}

class CreateLedModeError extends LedModeState {
  final String _message;

  const CreateLedModeError(this._message);

  @override
  String get message => _message;
}

class UpdateLedModeSuccess extends LedModeState {
  final String _message;
  final LedMode _mode;
  final List<LedMode> _modes;

  const UpdateLedModeSuccess(this._message, this._mode, this._modes);

  @override
  String get message => _message;
  @override
  LedMode? get mode => _mode;
  @override
  List<LedMode> get modes => _modes;
}

class UpdateLedModeError extends LedModeState {
  final String _message;
  final String modeName;

  const UpdateLedModeError(this._message, this.modeName);

  @override
  String get message => _message;
}

class DestroyLedModeSuccess extends LedModeState {
  final String _message;
  final List<LedMode> _modes;

  const DestroyLedModeSuccess(this._message, this._modes);

  @override
  String get message => _message;
  @override
  List<LedMode> get modes => _modes;
}

class DestroyLedModeError extends LedModeState {
  final String _message;

  const DestroyLedModeError(this._message);

  @override
  String get message => _message;
}

class LedModeGRPCBloc extends Bloc<LedModeEvent, LedModeState> {
  late ColorModeCommunication colorModeGrpcClient;
  late PatternModeCommunication patternModeGrpcClient;
  // late ImageModeCommunication imageModeGrpcClient;
  // late VideoModeCommunication videoModeGrpcClient;

  LedModeGRPCBloc(SettingsState state) : super(LedModeListInitial()) {
    on<ServerChangedEvent>(onServerChangedEvent);
    add(ServerChangedEvent(
        colorModeGrpcClient: ColorModeCommunication(
            serverName: state.serverName, serverPort: state.serverPort),
        patternModeGrpcClient: PatternModeCommunication(
            serverName: state.serverName, serverPort: state.serverPort)));

    on<GetLedModeListEvent>(onGetLedModeListEvent);
    on<GetLedModeEvent>(onGetLedModeEvent);
    on<CreateLedModeEvent>(onCreateLedModeEvent);
    on<UpdateLedModeEvent>(onUpdateLedModeEvent);
    on<PartialUpdateLedModeEvent>(onPartialUpdateLedModeEvent);
    on<DestroyLedModeEvent>(onDestroyLedModeEvent);
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<LedModeState> emit) {
    colorModeGrpcClient = event.colorModeGrpcClient;
    patternModeGrpcClient = event.patternModeGrpcClient;
  }

  Future<List<ColorMode>> getColorModeItems() async {
    var responseLedPanel = await colorModeGrpcClient.list();
    return responseLedPanel.results
        .map((e) => ColorMode.fromResponse(e))
        .toList();
  }

  Future<List<PatternMode>> getPatternModeItems() async {
    var responseCoffeeMachine = await patternModeGrpcClient.list();
    return responseCoffeeMachine.results
        .map((e) => PatternMode.fromResponse(e))
        .toList();
  }

  void onGetLedModeListEvent(
      GetLedModeListEvent event, Emitter<LedModeState> emit) async {
    try {
      // if empty, query, else use the modes given
      if (event.modes == null) {
        emit(LedModeLoading());
        emit(LedModeListSuccess(
            [...await getColorModeItems(), ...await getPatternModeItems()]));
      } else {
        emit(LedModeListSuccess(event.modes!));
      }
    } catch (error) {
      emit(LedModeListError(error.toString()));
    }
  }

  void onGetLedModeEvent(
      GetLedModeEvent event, Emitter<LedModeState> emit) async {
    emit(GetLedModeSuccess(event.mode, event.modes));
  }

  void onRetrieveLedModeEvent(
      RetrieveLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      LedMode p;
      if (event.mode is PatternMode) {
        PatternModeResponse response =
            await patternModeGrpcClient.retrieve(event.mode.id);

        p = PatternMode.fromResponse(response);
      } else {
        ColorModeResponse response =
            await colorModeGrpcClient.retrieve(event.mode.id);

        p = ColorMode.fromResponse(response);
      }

      event.modes[event.modes.indexWhere((element) => element.id == p.id)] = p;
      emit(RetrieveLedModeSuccess(p, event.modes));
    } catch (error) {
      emit(RetrieveLedModeError(error.toString()));
    }
  }

  void onCreateLedModeEvent(
      CreateLedModeEvent event, Emitter<LedModeState> emit) async {
    // emit(LedModeLoading());
    try {
      if (event.mode is PatternMode) {
        var response =
            await patternModeGrpcClient.create(event.mode as PatternMode);
        PatternMode mode = PatternMode.fromResponse(response);

        emit(CreateLedModeSuccess("success", mode, event.modes..add(mode)));
      } else {
        var response =
            await colorModeGrpcClient.create(event.mode as ColorMode);
        ColorMode mode = ColorMode.fromResponse(response);

        emit(CreateLedModeSuccess("success", mode, event.modes..add(mode)));
      }
    } catch (error) {
      emit(CreateLedModeError(error.toString()));
    }
  }

  void onUpdateLedModeEvent(
      UpdateLedModeEvent event, Emitter<LedModeState> emit) async {
    // emit(LedModeLoading());
    try {
      LedMode p;

      if (event.mode is PatternMode) {
        var response =
            await patternModeGrpcClient.update(event.mode as PatternMode);
        p = PatternMode.fromResponse(response);
      } else {
        var response =
            await colorModeGrpcClient.update(event.mode as ColorMode);
        p = ColorMode.fromResponse(response);
      }

      event.modes[event.modes.indexWhere((element) => element.id == p.id)] = p;
      emit(UpdateLedModeSuccess("success", p, event.modes));
    } catch (error) {
      emit(UpdateLedModeError(error.toString(), event.mode.name));
    }
  }

  void onPartialUpdateLedModeEvent(
      PartialUpdateLedModeEvent event, Emitter<LedModeState> emit) async {
    // emit(LedModeLoading());
    try {
      LedMode p;
      if (event.mode is PatternMode) {
        var response = await patternModeGrpcClient.partialUpdate(
            event.mode as PatternMode, event.fields);
        p = PatternMode.fromResponse(response);
      } else {
        var response = await colorModeGrpcClient.partialUpdate(
            event.mode as ColorMode, event.fields);
        p = ColorMode.fromResponse(response);
      }
      event.modes[event.modes.indexWhere((element) => element.id == p.id)] = p;
      emit(UpdateLedModeSuccess("success", p, event.modes));
    } catch (error) {
      emit(UpdateLedModeError(error.toString(), event.mode.name));
    }
  }

  void onDestroyLedModeEvent(
      DestroyLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      if (event.mode is PatternMode) {
        await patternModeGrpcClient.destroy(event.mode.id);
      } else {
        await colorModeGrpcClient.destroy(event.mode.id);
      }

      event.modes.removeWhere((item) => item.id == event.mode.id);
      emit(DestroyLedModeSuccess("Successfully deleted mode", event.modes));
    } catch (error) {
      emit(DestroyLedModeError(error.toString()));
    }
  }
}
