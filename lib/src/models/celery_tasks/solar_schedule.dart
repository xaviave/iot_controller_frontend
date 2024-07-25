import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

class SolarSchedule extends Schedule {
  String event;
  double latitude;
  double longitude;

  SolarSchedule({
    required super.id,
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

  @override
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
