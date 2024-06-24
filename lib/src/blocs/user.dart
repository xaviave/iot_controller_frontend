import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/models/user.dart';
import 'package:iot_controller/src/services/communication_service.dart';

abstract class UserEvent {}

class ServerChangedEvent extends UserEvent {
  final UserCommunication projectGrpcClient;

  ServerChangedEvent(this.projectGrpcClient);
}

class GetUserListEvent extends UserEvent {
  GetUserListEvent();
}

class UpdateUserEvent extends UserEvent {
  final User project;

  UpdateUserEvent({required this.project});
}

sealed class UserState {
  const UserState();

  List<User> get users => [];
}

class UserListInitial extends UserState {}

class UserListSuccess extends UserState {
  final List<User> _users;

  const UserListSuccess(this._users);

  @override
  List<User> get users => _users;
}

class UserListError extends UserState {
  final String message;

  const UserListError(this.message);

  String get errorMessage => message;
}

class UpdateUserEventSuccess extends UserState {
  final String message;

  const UpdateUserEventSuccess(this.message);

  String get successMessage => message;
}

class UpdateUserEventError extends UserState {
  final String message;

  const UpdateUserEventError(this.message);

  String get errorMessage => message;
}

class UserGRPCBloc extends Bloc<UserEvent, UserState> {
  late UserCommunication projectGrpcClient;

  UserGRPCBloc(SettingsState state) : super(UserListInitial()) {
    projectGrpcClient = UserCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
    on<ServerChangedEvent>(onServerChangedEvent);
    on<GetUserListEvent>(onGetUserListEvent);
    add(GetUserListEvent());
  }

  void onServerChangedEvent(
      ServerChangedEvent event, Emitter<UserState> emit) {
    projectGrpcClient = event.projectGrpcClient;
    add(GetUserListEvent());
  }

  void onGetUserListEvent(
      GetUserListEvent event, Emitter<UserState> emit) async {
    try {
      var response = await projectGrpcClient.List();
      emit(UserListSuccess(
          [for (var e in response.results) User.fromResponse(e)]));
    } catch (error) {
      emit(UserListError(error.toString()));
    }
  }

  void onUpdateUserEvent(
      UpdateUserEvent event, Emitter<UserState> emit) async {
    try {
      await projectGrpcClient.Update(event.project);
    } catch (error) {
      emit(UpdateUserEventError(error.toString()));
    }
  }
}
