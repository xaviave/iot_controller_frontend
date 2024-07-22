import 'package:iot_controller/protos/backend.pb.dart';

class ClockedSchedule {
  int id;
  String clockedTime;

  ClockedSchedule({
    required this.id,
    required this.clockedTime,
  });

  static ClockedSchedule fromResponse(ClockedScheduleResponse r) {
    return ClockedSchedule(
      id: r.id,
      clockedTime: r.clockedTime,
    );
  }

  ClockedScheduleRequest getRequest() {
    return ClockedScheduleRequest(
      id: id,
      clockedTime: clockedTime,
    );
  }

  @override
  String toString() {
    return clockedTime;
  }
}
