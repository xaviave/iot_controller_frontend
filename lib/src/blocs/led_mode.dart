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

class GetLedModeListEvent extends LedModeEvent {
}

class UpdateLedModeEvent extends LedModeEvent {
  final LedMode mode;

  UpdateLedModeEvent({required this.mode});
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
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<LedModeState> emit) {
    colorModeGrpcClient = event.colorModeGrpcClient;
    patternModeGrpcClient = event.patternModeGrpcClient;
    add(GetLedModeListEvent());
  }

  Future<Map<String, PatternMode>> getPatternModeItems() async {
    var responsePatternMode = await patternModeGrpcClient.List();
    return {
      for (var e in responsePatternMode.results)
        e.name: PatternMode.fromResponse(e)
    };
  }

  Future<Map<String, ColorMode>> getColorModeItems() async {
    var responseColorMode = await colorModeGrpcClient.List();
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

  void onUpdateLedModeEvent(
      UpdateLedModeEvent event, Emitter<LedModeState> emit) async {
    try {
      if (event.mode is ColorMode) {
        await colorModeGrpcClient.Update(event.mode as ColorMode);
      } else {
        await patternModeGrpcClient.Update(event.mode as PatternMode);
      }
    } catch (error) {
      emit(UpdateLedModeEventError(error.toString()));
    }
  }
}
