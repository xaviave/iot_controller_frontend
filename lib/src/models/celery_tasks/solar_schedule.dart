import 'package:iot_controller/protos/backend.pb.dart';

class SolarSchedule {
  int id;
  String event;
  double latitude;
  double longitude;

  SolarSchedule({
    required this.id,
    required this.event,
    required this.latitude,
    required this.longitude,
  });

  static SolarSchedule fromResponse(SolarScheduleResponse r) {
    return SolarSchedule(
      id: r.id,
      event: r.event,
      latitude: r.latitude,
      longitude: r.longitude,
    );
  }

  SolarScheduleRequest getRequest() {
    return SolarScheduleRequest(
      id: id,
      event: event,
      latitude: latitude,
      longitude: longitude,
    );
  }

  @override
  String toString() {
    return "$event | $latitude : $longitude";
  }
}
