import 'package:iot_controller/protos/backend.pb.dart';

class PeriodicTask {
  String name;
  String task;
  int interval;
  int crontab;
  int solar;
  int clocked;

  PeriodicTask({
    required this.name,
    required this.task,
    required this.interval,
    required this.crontab,
    required this.solar,
    required this.clocked,
  });

  static PeriodicTask fromResponse(PeriodicTaskResponse r) {
    return PeriodicTask(
      name: r.name,
      task: r.task,
      interval: r.interval,
      crontab: r.crontab,
      solar: r.solar,
      clocked: r.clocked,
    );
  }

  PeriodicTaskRequest getRequest() {
    return PeriodicTaskRequest(
      name: name,
      task: task,
      interval: interval,
      crontab: crontab,
      solar: solar,
      clocked: clocked,
    );
  }

  @override
  String toString() {
    return name;
  }
}
