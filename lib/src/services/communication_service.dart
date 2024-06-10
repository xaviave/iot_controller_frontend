import 'package:grpc/grpc_connection_interface.dart';
import 'package:iot_controller/protos/backend.pbgrpc.dart';
import 'package:iot_controller/src/models/category.dart';
import 'package:iot_controller/src/models/products/coffee_machine.dart';
import 'package:iot_controller/src/models/products/led/modes/color_mode.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/models/products/led/modes/pattern_mode.dart';
import 'package:iot_controller/src/models/project.dart';

import 'package:iot_controller/src/services/channel/abstract_communication.dart'
    if (dart.library.io) 'package:iot_controller/src/services/channel/mobile_communication.dart'
    if (dart.library.html) 'package:iot_controller/src/services/channel/web_communication.dart';

class CategoryCommunication {
  late ClientChannelBase channel;
  late CategoryControllerClient stub;

  CategoryCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = getCommunicationService(serverName, serverPort);
    stub = CategoryControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CategoryResponse> Create(Category l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> Destroy(int id) async {
    await stub.destroy(CategoryDestroyRequest(id: id));
  }

  Future<CategoryListResponse> List() async {
    final response = await stub.list(CategoryListRequest());
    return response;
  }

  Future<CategoryResponse> Retrieve(int id) async {
    final response = await stub.retrieve(CategoryRetrieveRequest(id: id));
    return response;
  }

  Future<CategoryResponse> Update(Category l) async {
    // print("Update Category");
    final response = await stub.update(l.getRequest());
    return response;
  }
}

class ColorModeCommunication {
  late ClientChannelBase channel;
  late ColorModeControllerClient stub;

  ColorModeCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }
  Future<void> init(String serverName, int serverPort) async {
    channel = getCommunicationService(serverName, serverPort);
    stub = ColorModeControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ColorModeResponse> Create(ColorMode l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> Destroy(int id) async {
    await stub.destroy(ColorModeDestroyRequest(id: id));
  }

  Future<ColorModeListResponse> List() async {
    final response = await stub.list(ColorModeListRequest());
    return response;
  }

  Future<ColorModeResponse> Retrieve(int id) async {
    final response = await stub.retrieve(ColorModeRetrieveRequest(id: id));
    return response;
  }

  Future<ColorModeResponse> Update(ColorMode l) async {
    // print("Update ColorMode");
    final response = await stub.update(l.getRequest());
    return response;
  }
}

class PatternModeCommunication {
  late ClientChannelBase channel;
  late PatternModeControllerClient stub;

  PatternModeCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }
  Future<void> init(String serverName, int serverPort) async {
    channel = getCommunicationService(serverName, serverPort);
    stub = PatternModeControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<PatternModeResponse> Create(PatternMode l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> Destroy(int id) async {
    await stub.destroy(PatternModeDestroyRequest(id: id));
  }

  Future<PatternModeListResponse> List() async {
    final response = await stub.list(PatternModeListRequest());
    return response;
  }

  Future<PatternModeResponse> Retrieve(int id) async {
    final response = await stub.retrieve(PatternModeRetrieveRequest(id: id));
    return response;
  }

  Future<PatternModeResponse> Update(PatternMode l) async {
    final response = await stub.update(l.getRequest());
    return response;
  }
}

class LedPanelCommunication {
  late ClientChannelBase channel;
  late LedPanelControllerClient stub;

  LedPanelCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }
  Future<void> init(String serverName, int serverPort) async {
    channel = getCommunicationService(serverName, serverPort);
    channel = getCommunicationService(serverName, serverPort);
    options:
    CallOptions(timeout: const Duration(seconds: 30));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<LedPanelResponse> Create(LedPanel l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> Destroy(int id) async {
    await stub.destroy(LedPanelDestroyRequest(id: id));
  }

  Future<LedPanelListResponse> List() async {
    final response = await stub.list(LedPanelListRequest());
    return response;
  }

  Future<LedPanelResponse> Retrieve(int id) async {
    final response = await stub.retrieve(LedPanelRetrieveRequest(id: id));
    return response;
  }

  Future<LedPanelResponse> Update(LedPanel l) async {
    // print("Update LedPanel");
    final response = await stub.update(l.getRequest());
    return response;
  }
}

class CoffeeMachineCommunication {
  late ClientChannelBase channel;
  late CoffeeMachineControllerClient stub;

  CoffeeMachineCommunication(
      {required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }
  Future<void> init(String serverName, int serverPort) async {
    channel = getCommunicationService(serverName, serverPort);
    stub = CoffeeMachineControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CoffeeMachineResponse> Create(CoffeeMachine l) async {
    final response = await stub.create(l.getRequest());
    return response;
  }

  Future<void> Destroy(int id) async {
    await stub.destroy(CoffeeMachineDestroyRequest(id: id));
  }

  Future<CoffeeMachineListResponse> List() async {
    final response = await stub.list(CoffeeMachineListRequest());
    return response;
  }

  Future<CoffeeMachineResponse> Retrieve(int id) async {
    final response = await stub.retrieve(CoffeeMachineRetrieveRequest(id: id));
    return response;
  }

  Future<CoffeeMachineResponse> Update(CoffeeMachine l) async {
    // print("Update CoffeeMachine");
    final response = await stub.update(l.getRequest());
    return response;
  }
}

class ProjectCommunication {
  late ClientChannelBase channel;
  late ProjectControllerClient stub;

  ProjectCommunication({required String serverName, required int serverPort}) {
    init(serverName, serverPort);
  }

  Future<void> init(String serverName, int serverPort) async {
    channel = getCommunicationService(serverName, serverPort);
    stub = ProjectControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ProjectResponse> Create(Project p) async {
    final response = await stub.create(p.getRequest());
    return response;
  }

  Future<void> Destroy(int id) async {
    await stub.destroy(ProjectDestroyRequest(id: id));
  }

  Future<ProjectListResponse> List() async {
    final response = await stub.list(ProjectListRequest());
    return response;
  }

  Future<ProjectResponse> Retrieve(int id) async {
    final response = await stub.retrieve(ProjectRetrieveRequest(id: id));
    return response;
  }

  Future<ProjectResponse> Update(Project p) async {
    // print("Update Project");
    final response = await stub.update(p.getRequest());
    return response;
  }
}
