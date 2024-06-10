import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

ClientChannelBase getCommunicationService(String serverName, int serverPort) =>
    ClientChannel(serverName,
        port: serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
