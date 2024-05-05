// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/protos/backend.pbgrpc.dart';
import 'package:flutter_application_1/src/models/category.dart';
import 'package:flutter_application_1/src/models/products/coffee_machine.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/project.dart';
import 'package:grpc/grpc.dart';

class CategoryCommunication {
  late ClientChannel channel;
  late CategoryControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('0.0.0.0',
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = CategoryControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CategoryResponse> Create(Category l) async {
    final response = await stub.create(l.get_request());
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
    final response = await stub.update(l.get_request());
    return response;
  }
}

class ColorModeCommunication {
  late ClientChannel channel;
  late ColorModeControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('0.0.0.0',
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = ColorModeControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ColorModeResponse> Create(ColorMode l) async {
    final response = await stub.create(l.get_request());
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
    final response = await stub.update(l.get_request());
    return response;
  }
}

class PatternModeCommunication {
  late ClientChannel channel;
  late PatternModeControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('0.0.0.0',
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = PatternModeControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<PatternModeResponse> Create(PatternMode l) async {
    final response = await stub.create(l.get_request());
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
    // print("Update PatternMode");
    final response = await stub.update(l.get_request());
    return response;
  }
}

class LedPanelCommunication {
  late ClientChannel channel;
  late LedPanelControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('192.168.1.148',
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = LedPanelControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<LedPanelResponse> Create(LedPanel l) async {
    final response = await stub.create(l.get_request());
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
    final response = await stub.update(l.get_request());
    return response;
  }
}

class CoffeeMachineCommunication {
  late ClientChannel channel;
  late CoffeeMachineControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('192.168.1.148',
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = CoffeeMachineControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<CoffeeMachineResponse> Create(CoffeeMachine l) async {
    final response = await stub.create(l.get_request());
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
    final response = await stub.update(l.get_request());
    return response;
  }
}

class ProjectCommunication {
  late ClientChannel channel;
  late ProjectControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('192.168.1.148',
        port: 50052,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = ProjectControllerClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ProjectResponse> Create(Project p) async {
    final response = await stub.create(p.get_request());
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
    final response = await stub.update(p.get_request());
    return response;
  }
}
