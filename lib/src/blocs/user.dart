import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/user.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserEvent {}

class ServerChangedEvent extends UserEvent {
  final UserCommunication userGrpcClient;

  ServerChangedEvent(this.userGrpcClient);
}

class GetUserListEvent extends UserEvent {}

class UpdateUserEvent extends UserEvent {
  final User user;

  UpdateUserEvent({required this.user});
}

class RetrieveUserEvent extends UserEvent {
  final int token;
  // User user;

  RetrieveUserEvent({required this.token});
}

class AddActiveUserEvent extends UserEvent {
  final User user;

  AddActiveUserEvent({required this.user});
}

sealed class UserState {
  const UserState();

  String get message => "";
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
  @override
  final String message;

  const UserListError(this.message);

  String get errorMessage => message;
}

class UpdateUserEventSuccess extends UserState {
  @override
  final String message;

  const UpdateUserEventSuccess(this.message);

  String get successMessage => message;
}

class UpdateUserEventError extends UserState {
  @override
  final String message;

  const UpdateUserEventError(this.message);

  String get errorMessage => message;
}

class RetrieveUserEventSuccess extends UserState {
  final User user;

  const RetrieveUserEventSuccess(this.user);

  String get successMessage => "Retrieve user: $user OK";
}

class RetrieveUserEventError extends UserState {
  @override
  final String message;

  const RetrieveUserEventError(this.message);

  String get errorMessage => message;
}

class AddActiveUserEventSuccess extends UserState {
  final User activeUser;

  const AddActiveUserEventSuccess(this.activeUser);
}

class AddActiveUserEventError extends UserState {
  @override
  final String message;

  const AddActiveUserEventError(this.message);

  String get errorMessage => message;
}

class UserGRPCBloc extends Bloc<UserEvent, UserState> {
  late UserCommunication userGrpcClient;

  void initActiveUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String token = await prefs.getString("activeUserToken") ?? "";
    if (token == "") {
      return;
    }
    var activeUser =
        User.fromResponse(await userGrpcClient.retrieve(int.parse(token)));
    add(AddActiveUserEvent(user: activeUser));
  }

  UserGRPCBloc(SettingsState state) : super(UserListInitial()) {
    userGrpcClient = UserCommunication(
        serverName: state.serverName, serverPort: state.serverPort);
    on<ServerChangedEvent>(onServerChangedEvent);
    on<GetUserListEvent>(onGetUserListEvent);
    on<AddActiveUserEvent>(onAddActiveUserEvent);
    on<RetrieveUserEvent>(onRetrieveUserEvent);

    // add(GetUserListEvent());
    initActiveUser();
  }

  void onServerChangedEvent(ServerChangedEvent event, Emitter<UserState> emit) {
    userGrpcClient = event.userGrpcClient;
    // add(GetUserListEvent());
  }

  void onAddActiveUserEvent(
      AddActiveUserEvent event, Emitter<UserState> emit) async {
    emit(AddActiveUserEventSuccess(event.user));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("activeUserToken", event.user.id.toString());
  }

  void onRetrieveUserEvent(
      RetrieveUserEvent event, Emitter<UserState> emit) async {
    try {
      var response = await userGrpcClient.retrieve(event.token);
      emit(RetrieveUserEventSuccess(User.fromResponse(response)));
    } catch (error) {
      emit(RetrieveUserEventError(error.toString()));
    }
  }

  void onGetUserListEvent(
      GetUserListEvent event, Emitter<UserState> emit) async {
    try {
      var response = await userGrpcClient.list();
      emit(UserListSuccess(
          [for (var e in response.results) User.fromResponse(e)]));
    } catch (error) {
      emit(UserListError(error.toString()));
    }
  }

  void onUpdateUserEvent(UpdateUserEvent event, Emitter<UserState> emit) async {
    try {
      await userGrpcClient.update(event.user);
    } catch (error) {
      emit(UpdateUserEventError(error.toString()));
    }
  }
}
