import 'package:flutter_bloc/flutter_bloc.dart';
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

  ServerChangedEvent(
      {required this.colorModeGrpcClient, required this.patternModeGrpcClient});
}

class GetLedModeListEvent extends LedModeEvent {}

class UpdateLedModeEvent extends LedModeEvent {
  final LedMode mode;

  UpdateLedModeEvent({required this.mode});
}

class PartialUpdateLedModeEvent extends LedModeEvent {
  final LedMode mode;
  Map<String, dynamic> fields;

  PartialUpdateLedModeEvent({required this.mode, required this.fields});
}

class CreateLedModeEvent extends LedModeEvent {
  final LedMode mode;

  CreateLedModeEvent({required this.mode});
}

class DestroyLedModeEvent extends LedModeEvent {
  final LedMode mode;

  DestroyLedModeEvent({required this.mode});
}

sealed class LedModeState {
  const LedModeState();

  Map<String, LedMode> get ledModes => {};
}

class LedModeListInitial extends LedModeState {}

class LedModeListSuccess extends LedModeState {
  final Map<String, ColorMode> _colorModes;
  final Map<String, PatternMode> _patternModes;

  const LedModeListSuccess(this._colorModes, this._patternModes);

  Map<String, ColorMode> get coffeeMachines => _colorModes;
  Map<String, PatternMode> get patternMode => _patternModes;
  Map<String, LedMode> get modes => {..._colorModes, ..._patternModes};
}

class LedModeListError extends LedModeState {
  final String message;

  const LedModeListError(this.message);

  String get errorMessage => message;
}

class UpdateLedModeEventSuccess extends LedModeState {
  final String message;

  const UpdateLedModeEventSuccess(this.message);

  String get successMessage => message;
}

class UpdateLedModeEventError extends LedModeState {
  final String message;

  const UpdateLedModeEventError(this.message);

  String get errorMessage => message;
}

class CreateLedModeEventSuccess extends LedModeState {
  final String message;

  const CreateLedModeEventSuccess(this.message);

  String get successMessage => message;
}

class CreateLedModeEventError extends LedModeState {
  final String message;

  const CreateLedModeEventError(this.message);

  String get errorMessage => message;
}

class DestroyLedModeEventSuccess extends LedModeState {
  final String message;

  const DestroyLedModeEventSuccess(this.message);

  String get successMessage => message;
}

class DestroyLedModeEventError extends LedModeState {
  final String message;

  const DestroyLedModeEventError(this.message);

  String get errorMessage => message;
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
    on<UpdateLedModeEvent>(onUpdateLedModeEvent);
    on<PartialUpdateLedModeEvent>(onPartialUpdateLedModeEvent);
    on<DestroyLedModeEvent>(onDestroyLedModeEvent);
    on<CreateLedModeEvent>(onCreateLedModeEvent);
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<LedModeState> emit) {
    colorModeGrpcClient = event.colorModeGrpcClient;
    patternModeGrpcClient = event.patternModeGrpcClient;
    add(GetLedModeListEvent());
  }

  Future<Map<String, PatternMode>> getPatternModeItems() async {
    var responsePatternMode = await patternModeGrpcClient.list();
    return {
      for (var e in responsePatternMode.results)
        e.name: PatternMode.fromResponse(e)
    };
  }

  Future<Map<String, ColorMode>> getColorModeItems() async {
    var responseColorMode = await colorModeGrpcClient.list();
    return {
      for (var e in responseColorMode.results) e.name: ColorMode.fromResponse(e)
    };
  }

  void onGetLedModeListEvent(
      GetLedModeListEvent event, Emitter<LedModeState> emit) async {
    try {
      emit(LedModeListSuccess(
          await getColorModeItems(), await getPatternModeItems()));
    } catch (error) {
      emit(LedModeListError(error.toString()));
    }
  }

  void onCreateLedModeEvent(
      CreateLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      if (event.mode is ColorMode) {
        await colorModeGrpcClient.create(event.mode as ColorMode);
      } else {
        await patternModeGrpcClient.create(event.mode as PatternMode);
      }
    } catch (error) {
      emit(CreateLedModeEventError(error.toString()));
    }
  }

  void onUpdateLedModeEvent(
      UpdateLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      if (event.mode is ColorMode) {
        await colorModeGrpcClient.update(event.mode as ColorMode);
      } else {
        await patternModeGrpcClient.update(event.mode as PatternMode);
      }
    } catch (error) {
      emit(UpdateLedModeEventError(error.toString()));
    }
  }

  void onPartialUpdateLedModeEvent(
      PartialUpdateLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      if (event.mode is ColorMode) {
        await colorModeGrpcClient.partialUpdate(
            event.mode as ColorMode, event.fields);
      } else {
        await patternModeGrpcClient.partialUpdate(
            event.mode as PatternMode, event.fields);
      }
    } catch (error) {
      emit(UpdateLedModeEventError(error.toString()));
    }
  }

  void onDestroyLedModeEvent(
      DestroyLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      if (event.mode is ColorMode) {
        await colorModeGrpcClient.destroy(event.mode.id);
      } else {
        await patternModeGrpcClient.destroy(event.mode.id);
      }
    } catch (error) {
      emit(DestroyLedModeEventError(error.toString()));
    }
  }
}
