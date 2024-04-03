// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/protos/backend.pbgrpc.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:grpc/grpc.dart';

class ColorModeCommunication {
  late ClientChannel channel;
  late ColorModeControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('0.0.0.0',
        port: 50051,
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
    final response = await stub.update(l.get_request());
    return response;
  }
}

class LedPanelCommunication {
  late ClientChannel channel;
  late LedPanelControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('127.0.0.1',
        port: 50051,
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
    final response = await stub.update(l.get_request());
    return response;
  }
}

class ProjectCommunication {
  late ClientChannel channel;
  late ProjectControllerClient stub;

  Future<void> init() async {
    channel = ClientChannel('127.0.0.1',
        port: 50051,
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
    final response = await stub.update(p.get_request());
    return response;
  }
}
