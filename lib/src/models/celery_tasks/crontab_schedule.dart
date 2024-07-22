import 'package:iot_controller/protos/backend.pb.dart';

class CrontabSchedule {
  int id;
  String minute;
  String hour;
  String dayOfWeek;
  String dayOfMonth;
  String monthOfYear;
  String timezone;

  CrontabSchedule({
    required this.id,
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
    return "$minute:$hour on $dayOfWeek / $dayOfMonth / $monthOfYear in $timezone";
  }
}
