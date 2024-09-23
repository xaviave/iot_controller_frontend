import 'package:iot_controller/protos/backend.pb.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

import 'clocked_schedule.dart';
import 'crontab_schedule.dart';
import 'interval_schedule.dart';
import 'solar_schedule.dart';

class PeriodicTask {
  String name;
  String task;
  String kwargs;
  bool enabled;
  ClockedSchedule? clocked;
  CrontabSchedule? crontab;
  IntervalSchedule? interval;
  SolarSchedule? solar;

  PeriodicTask({
    required this.name,
    required this.task,
    required this.kwargs,
    required this.enabled,
    required this.interval,
    required this.crontab,
    required this.solar,
    required this.clocked,
  });

  @override
  String toString() {
    return "Task: $name | Schedule: ${getSchedule()}";
  }

  Schedule getSchedule() {
    if (clocked != null) {
      return clocked!;
    } else if (crontab != null) {
      return crontab!;
    } else if (interval != null) {
      return interval!;
    } else if (solar != null) {
      return solar!;
    } else {
      throw TypeError();
    }
  }

  PeriodicTaskRequest getRequest() {
    return PeriodicTaskRequest(
      name: name,
      task: task,
      enabled: enabled,
      kwargs: kwargs,
      interval: interval?.getRequest(),
      crontab: crontab?.getRequest(),
      solar: solar?.getRequest(),
      clocked: clocked?.getRequest(),
    );
  }

  PeriodicTaskPartialUpdateRequest getPartialRequest(
      Map<String, dynamic> fields) {
    return PeriodicTaskPartialUpdateRequest(
      name: name,
      partialUpdateFields: fields.keys,
      enabled: fields["enabled"],
      kwargs: fields["kwargs"],
      interval: fields["interval"],
      crontab: fields["crontab"],
      solar: fields["solar"],
      clocked: fields["clocked"],
    );
  }

  static PeriodicTask fromResponse(PeriodicTaskResponse r) {
    return PeriodicTask(
      name: r.name,
      task: r.task,
      enabled: r.enabled,
      kwargs: r.kwargs,
      interval:
          r.hasInterval() ? IntervalSchedule.fromResponse(r.interval) : null,
      crontab: r.hasCrontab() ? CrontabSchedule.fromResponse(r.crontab) : null,
      solar: r.hasSolar() ? SolarSchedule.fromResponse(r.solar) : null,
      clocked: r.hasClocked() ? ClockedSchedule.fromResponse(r.clocked) : null,
    );
  }
}
