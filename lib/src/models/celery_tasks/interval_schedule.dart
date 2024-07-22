import 'package:iot_controller/protos/backend.pb.dart';

class IntervalSchedule {
  int id;
  int every;
  String period;

  IntervalSchedule({
    required this.id,
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

  IntervalScheduleRequest getRequest() {
    return IntervalScheduleRequest(
      id: id,
      every: every,
      period: period,
    );
  }

  @override
  String toString() {
    return "every $every $period";
  }
}
