import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

class CrontabSchedule extends Schedule {
  final name = "crontab";

  String minute;
  String hour;
  String dayOfWeek;
  String dayOfMonth;
  String monthOfYear;
  String timezone;

  CrontabSchedule({
    required super.id,
    required this.minute,
    required this.hour,
    required this.dayOfWeek,
    required this.dayOfMonth,
    required this.monthOfYear,
    required this.timezone,
  });

  static CrontabSchedule fromResponse(CrontabScheduleResponse r) {
    return CrontabSchedule(
      id: r.id,
      minute: r.minute,
      hour: r.hour,
      dayOfWeek: r.dayOfWeek,
      dayOfMonth: r.dayOfMonth,
      monthOfYear: r.monthOfYear,
      timezone: r.timezone,
    );
  }

  @override
  CrontabScheduleRequest getRequest() {
    return CrontabScheduleRequest(
      id: id,
      minute: minute,
      hour: hour,
      dayOfWeek: dayOfWeek,
      dayOfMonth: dayOfMonth,
      monthOfYear: monthOfYear,
      timezone: timezone,
    );
  }

  @override
  String toString() {
    return "Crontab - $minute:$hour on $dayOfWeek / $dayOfMonth / $monthOfYear in $timezone";
  }
}
