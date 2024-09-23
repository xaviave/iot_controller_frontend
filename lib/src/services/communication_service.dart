import 'package:iot_controller/protos/backend.pbgrpc.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/models/celery_tasks/clocked_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/crontab_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/interval_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/periodic_task.dart';
import 'package:iot_controller/src/models/celery_tasks/solar_schedule.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/modes/color_mode.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:grpc/grpc.dart';
import 'package:iot_controller/src/models/user.dart';

class CategoryCommunication {
  late ClientChannel channel;
  late CategoryControllerClient stub;

  CategoryCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = CategoryControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CategoryResponse> create(Category l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(CategoryDestroyRequest(id: id));
  }

  Future<CategoryListResponse> list() async {
    final response = await stub.list(CategoryListRequest());
    return response;
  }

  Future<CategoryResponse> retrieve(int id) async {
    final response = await stub.retrieve(CategoryRetrieveRequest(id: id));
    return response;
  }

  Future<CategoryResponse> update(Category l) async {
    final response = await stub.update(l.getRequest());
    return response;
  }
}

class ColorModeCommunication {
  late ClientChannel channel;
  late ColorModeControllerClient stub;

  ColorModeCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = ColorModeControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ColorModeResponse> create(ColorMode l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(ColorModeDestroyRequest(id: id));
  }

  Future<ColorModeListResponse> list() async {
    final response = await stub.list(ColorModeListRequest());
    return response;
  }

  Future<ColorModeResponse> retrieve(int id) async {
    final response = await stub.retrieve(ColorModeRetrieveRequest(id: id));
    return response;
  }

  Future<ColorModeResponse> update(ColorMode l) async {
    final response = await stub.update(l.getRequest());
    return response;
  }

  Future<ColorModeResponse> partialUpdate(
      ColorMode l, Map<String, dynamic> fields) async {
    final response = await stub.partialUpdate(l.getPartialRequest(fields));
    return response;
  }
}

class PatternModeCommunication {
  late ClientChannel channel;
  late PatternModeControllerClient stub;

  PatternModeCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = PatternModeControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<PatternModeResponse> create(PatternMode l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(PatternModeDestroyRequest(id: id));
  }

  Future<PatternModeListResponse> list() async {
    final response = await stub.list(PatternModeListRequest());
    return response;
  }

  Future<PatternModeResponse> retrieve(int id) async {
    final response = await stub.retrieve(PatternModeRetrieveRequest(id: id));
    return response;
  }

  Future<PatternModeResponse> update(PatternMode l) async {
    final response = await stub.update(l.getRequest());
    return response;
  }

  Future<PatternModeResponse> partialUpdate(
      PatternMode l, Map<String, dynamic> fields) async {
    final response = await stub.partialUpdate(l.getPartialRequest(fields));
    return response;
  }
}

class LedPanelCommunication {
  late ClientChannel channel;
  late LedPanelControllerClient stub;

  LedPanelCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = LedPanelControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<LedPanelResponse> create(LedPanel l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(LedPanelDestroyRequest(id: id));
  }

  Future<LedPanelListResponse> list() async {
    final response = await stub.list(LedPanelListRequest());
    return response;
  }

  Future<LedPanelResponse> retrieve(int id) async {
    final response = await stub.retrieve(LedPanelRetrieveRequest(id: id));
    return response;
  }

  Future<LedPanelResponse> update(LedPanel l) async {
    final response = await stub.update(l.getRequest());
    return response;
  }

  Future<LedPanelResponse> partialUpdate(
      LedPanel l, Map<String, dynamic> fields) async {
    final response = await stub.partialUpdate(l.getPartialRequest(fields));
    return response;
  }
}

class CoffeeMachineCommunication {
  late ClientChannel channel;
  late CoffeeMachineControllerClient stub;

  CoffeeMachineCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = CoffeeMachineControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CoffeeMachineResponse> create(CoffeeMachine l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(CoffeeMachineDestroyRequest(id: id));
  }

  Future<CoffeeMachineListResponse> list() async {
    final response = await stub.list(CoffeeMachineListRequest());
    return response;
  }

  Future<CoffeeMachineResponse> retrieve(int id) async {
    final response = await stub.retrieve(CoffeeMachineRetrieveRequest(id: id));
    return response;
  }

  Future<CoffeeMachineResponse> update(CoffeeMachine l) async {
    final response = await stub.update(l.getRequest());
    return response;
  }

  Future<CoffeeMachineResponse> partialUpdate(
      CoffeeMachine c, Map<String, dynamic> fields) async {
    final response = await stub.partialUpdate(c.getPartialRequest(fields));
    return response;
  }
}

class UserCommunication {
  late ClientChannel channel;
  late UserControllerClient stub;

  UserCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = UserControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<UserResponse> create(User u) async {
    final response = await stub.create(u.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(UserDestroyRequest(id: id));
  }

  Future<UserListResponse> list() async {
    final response = await stub.list(UserListRequest());
    return response;
  }

  Future<UserResponse> retrieve(int id) async {
    final response = await stub.retrieve(UserRetrieveRequest(id: id));
    return response;
  }

  Future<UserResponse> update(User u) async {
    final response = await stub.update(u.getRequest());
    return response;
  }
}

class ProjectCommunication {
  late ClientChannel channel;
  late ProjectControllerClient stub;

  ProjectCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = ProjectControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ProjectResponse> create(Project p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(ProjectDestroyRequest(id: id));
  }

  Future<ProjectListResponse> list() async {
    final response = await stub.list(ProjectListRequest());
    return response;
  }

  Future<ProjectResponse> retrieve(int id) async {
    final response = await stub.retrieve(ProjectRetrieveRequest(id: id));
    return response;
  }

  Future<ProjectResponse> update(Project p) async {
    final response = await stub.update(p.getRequest());
    return response;
  }

  Future<ProjectResponse> partialUpdate(
      Project p, Map<String, dynamic> fields) async {
    final response = await stub.partialUpdate(p.getPartialRequest(fields));
    return response;
  }
}

class PeriodicTaskCommunication {
  late ClientChannel channel;
  late PeriodicTaskControllerClient stub;

  PeriodicTaskCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = PeriodicTaskControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<PeriodicTaskResponse> create(PeriodicTask p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> destroy(String name) async {
    await stub.destroy(PeriodicTaskDestroyRequest(name: name));
  }

  Future<PeriodicTaskListResponse> list() async {
    final response = await stub.list(PeriodicTaskListRequest());
    return response;
  }

  Future<PeriodicTaskResponse> retrieve(String name) async {
    final response =
        await stub.retrieve(PeriodicTaskRetrieveRequest(name: name));
    return response;
  }

  Future<PeriodicTaskResponse> update(PeriodicTask p) async {
    final response = await stub.update(p.getRequest());
    return response;
  }

  Future<PeriodicTaskResponse> partialUpdate(
      PeriodicTask p, Map<String, dynamic> fields) async {
    final response = await stub.partialUpdate(p.getPartialRequest(fields));
    return response;
  }
}

class ClockedScheduleCommunication {
  late ClientChannel channel;
  late ClockedScheduleControllerClient stub;

  ClockedScheduleCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = ClockedScheduleControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ClockedScheduleResponse> create(ClockedSchedule p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(ClockedScheduleDestroyRequest(id: id));
  }

  Future<ClockedScheduleListResponse> list() async {
    final response = await stub.list(ClockedScheduleListRequest());
    return response;
  }

  Future<ClockedScheduleResponse> retrieve(int id) async {
    final response =
        await stub.retrieve(ClockedScheduleRetrieveRequest(id: id));
    return response;
  }

  Future<ClockedScheduleResponse> update(ClockedSchedule p) async {
    final response = await stub.update(p.getRequest());
    return response;
  }

// Future<ClockedScheduleResponse> partialUpdate(
//     ClockedSchedule p, Map<String, dynamic> fields) async {
//   final response = await stub.partialUpdate(p.getPartialRequest(fields));
//   return response;
// }
}

class CrontabScheduleCommunication {
  late ClientChannel channel;
  late CrontabScheduleControllerClient stub;

  CrontabScheduleCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = CrontabScheduleControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CrontabScheduleResponse> create(CrontabSchedule p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(CrontabScheduleDestroyRequest(id: id));
  }

  Future<CrontabScheduleListResponse> list() async {
    final response = await stub.list(CrontabScheduleListRequest());
    return response;
  }

  Future<CrontabScheduleResponse> retrieve(int id) async {
    final response =
        await stub.retrieve(CrontabScheduleRetrieveRequest(id: id));
    return response;
  }

  Future<CrontabScheduleResponse> update(CrontabSchedule p) async {
    final response = await stub.update(p.getRequest());
    return response;
  }

// Future<CrontabScheduleResponse> partialUpdate(
//     CrontabSchedule p, Map<String, dynamic> fields) async {
//   final response = await stub.partialUpdate(p.getPartialRequest(fields));
//   return response;
// }
}

class IntervalScheduleCommunication {
  late ClientChannel channel;
  late IntervalScheduleControllerClient stub;

  IntervalScheduleCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = IntervalScheduleControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<IntervalScheduleResponse> create(IntervalSchedule p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(IntervalScheduleDestroyRequest(id: id));
  }

  Future<IntervalScheduleListResponse> list() async {
    final response = await stub.list(IntervalScheduleListRequest());
    return response;
  }

  Future<IntervalScheduleResponse> retrieve(int id) async {
    final response =
        await stub.retrieve(IntervalScheduleRetrieveRequest(id: id));
    return response;
  }

  Future<IntervalScheduleResponse> update(IntervalSchedule p) async {
    final response = await stub.update(p.getRequest());
    return response;
  }

// Future<IntervalScheduleResponse> partialUpdate(
//     IntervalSchedule p, Map<String, dynamic> fields) async {
//   final response = await stub.partialUpdate(p.getPartialRequest(fields));
//   return response;
// }
}

class SolarScheduleCommunication {
  late ClientChannel channel;
  late SolarScheduleControllerClient stub;

  SolarScheduleCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = SolarScheduleControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<SolarScheduleResponse> create(SolarSchedule p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> destroy(int id) async {
    await stub.destroy(SolarScheduleDestroyRequest(id: id));
  }

  Future<SolarScheduleListResponse> list() async {
    final response = await stub.list(SolarScheduleListRequest());
    return response;
  }

  Future<SolarScheduleResponse> retrieve(int id) async {
    final response = await stub.retrieve(SolarScheduleRetrieveRequest(id: id));
    return response;
  }

  Future<SolarScheduleResponse> update(SolarSchedule p) async {
    final response = await stub.update(p.getRequest());
    return response;
  }

// Future<SolarScheduleResponse> partialUpdate(
//     SolarSchedule p, Map<String, dynamic> fields) async {
//   final response = await stub.partialUpdate(p.getPartialRequest(fields));
//   return response;
// }
}
