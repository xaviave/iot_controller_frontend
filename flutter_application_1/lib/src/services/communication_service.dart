// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/protos/backend.pb.dart';
import 'package:flutter_application_1/protos/backend.pbgrpc.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/project/project.dart';
import 'package:grpc/grpc.dart';

class LedModeCommunication {
  late ClientChannel channel;
  late LedModeControllerClient stub;

  Future<void> init(L) async {
    channel = ClientChannel('127.0.0.1',
        port: 50051,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = LedModeControllerClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<LedModeResponse> Create(LedMode l) async {
    final response = await stub.create(l.get_request());
    return response;
  }

  Future<void> Destroy(String uuid) async {
    await stub.destroy(LedModeDestroyRequest(uuid: uuid));
  }

  Future<LedModeListResponse> List() async {
    final response = await stub.list(LedModeListRequest());
    return response;
  }

  Future<LedModeResponse> Retrieve(String uuid) async {
    final response = await stub.retrieve(LedModeRetrieveRequest(uuid: uuid));
    return response;
  }

  Future<LedModeResponse> Update(LedMode l) async {
    final response = await stub.update(l.get_request());
    return response;
  }
}

class LedPanelCommunication {
  late ClientChannel channel;
  late LedPanelControllerClient stub;

  Future<void> init(L) async {
    channel = ClientChannel('127.0.0.1',
        port: 50051,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = LedPanelControllerClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<LedPanelResponse> Create(LedPanel l) async {
    final response = await stub.create(l.get_request());
    return response;
  }

  Future<void> Destroy(String uuid) async {
    await stub.destroy(LedPanelDestroyRequest(uuid: uuid));
  }

  Future<LedPanelListResponse> List() async {
    final response = await stub.list(LedPanelListRequest());
    return response;
  }

  Future<LedPanelResponse> Retrieve(String uuid) async {
    final response = await stub.retrieve(LedPanelRetrieveRequest(uuid: uuid));
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

  Future<void> init(L) async {
    channel = ClientChannel('127.0.0.1',
        port: 50051,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = ProjectControllerClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
  }

  Future<void> clean() async {
    await channel.shutdown();
  }

  Future<ProjectResponse> Create(Project p) async {
    final response = await stub.create(p.get_request());
    return response;
  }

  Future<void> Destroy(String uuid) async {
    await stub.destroy(ProjectDestroyRequest(uuid: uuid));
  }

  Future<ProjectListResponse> List() async {
    final response = await stub.list(ProjectListRequest());
    return response;
  }

  Future<ProjectResponse> Retrieve(String uuid) async {
    final response = await stub.retrieve(ProjectRetrieveRequest(uuid: uuid));
    return response;
  }

  Future<ProjectResponse> Update(Project p) async {
    final response = await stub.update(p.get_request());
    return response;
  }
}
