import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_web.dart';

ClientChannelBase getCommunicationService(String serverName, int serverPort) =>
    GrpcWebClientChannel.xhr(
        Uri(scheme: "http", host: serverName, port: serverPort));
