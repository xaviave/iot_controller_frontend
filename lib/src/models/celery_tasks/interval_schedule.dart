import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

class IntervalSchedule extends Schedule {
  final name = "interval";

  int every;
  String period;

  IntervalSchedule({
    required super.id,
    required this.every,
    required this.period,
  });

  static IntervalSchedule fromResponse(IntervalScheduleResponse r) {
    return IntervalSchedule(
      id: r.id,
      every: r.every,
      period: r.period,
    );
  }

  @override
  IntervalScheduleRequest getRequest() {
    return IntervalScheduleRequest(
      id: id,
      every: every,
      period: period,
    );
  }

  @override
  String toString() {
    return "Interval - $every $period";
  }
}
