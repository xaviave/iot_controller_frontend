import 'package:iot_controller/protos/backend.pb.dart';

class User {
  int id;
  String username;
  String firstName;
  String lastName;
  String email;
  List<int> groups;

  User(
      {required this.id,
      required this.username,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.groups});

  static User fromResponse(UserResponse r) {
    return User(
      id: r.id,
      username: r.username,
      firstName: r.firstName,
      lastName: r.lastName,
      email: r.email,
      groups: r.groups,
    );
  }

  UserRequest getRequest() {
    return UserRequest(
        id: id,
        username: username,
        firstName: firstName,
        lastName: lastName,
        email: email,
        groups: groups);
  }

  @override
  String toString() {
    return username;
  }
}
