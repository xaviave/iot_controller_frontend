abstract class Schedule {
  int id;
  String name = "";

  Schedule({
    required this.id,
  });

  @override
  String toString() {
    return "Schedule abstract class";
  }

  static dynamic fromResponse(dynamic r) {}
  dynamic getRequest() {}
}
