import 'package:intl/intl.dart';
import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

class ClockedSchedule extends Schedule {
  final name = "clocked";
  String clockedTime;

  ClockedSchedule({
    required super.id,
    required this.clockedTime,
  });

  static ClockedSchedule fromResponse(ClockedScheduleResponse r) {
    return ClockedSchedule(
      id: r.id,
      clockedTime: r.clockedTime,
    );
  }

  @override
  ClockedScheduleRequest getRequest() {
    return ClockedScheduleRequest(
      id: id,
      clockedTime: clockedTime,
    );
  }

  @override
  String toString() {
    return "Clocked - ${DateFormat.yMd().add_Hm().format(DateTime.parse(clockedTime))}";
  }
}
