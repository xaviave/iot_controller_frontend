import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SettingsEvents {}

class ThemeChangedEvent extends SettingsEvents {
  final ThemeMode theme;

  ThemeChangedEvent(this.theme);
}

class ServerInfoChangedEvent extends SettingsEvents {
  final String serverName;
  final int serverPort;

  ServerInfoChangedEvent(this.serverName, this.serverPort);
}


class SettingsState {
  final ThemeMode theme;
  final String serverName;
  final int serverPort;

  SettingsState({required this.theme, required this.serverName, required this.serverPort});

  SettingsState copyWith({ThemeMode? newTheme, String? newServerName, int? newServerPort}) {
    return SettingsState(
      theme: newTheme ?? theme,
      serverName: newServerName ?? serverName,
      serverPort: newServerPort ?? serverPort,
    );
  }
}


class SettingsBloc extends Bloc<SettingsEvents, SettingsState> {
  SettingsBloc() : super(SettingsState(theme: ThemeMode.system, serverName: "0.0.0.0",serverPort: 50052)) {
    on<ThemeChangedEvent>(onThemeChange);
    on<ServerInfoChangedEvent>(onServerInfoChange);
  }

  void onThemeChange(ThemeChangedEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(newTheme: event.theme));
  }

  void onServerInfoChange(ServerInfoChangedEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(newServerName: state.serverName, newServerPort: state.serverPort));
  }
}