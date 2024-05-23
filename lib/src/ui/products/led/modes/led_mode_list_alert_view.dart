import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/products/led/modes/led_mode_details_view.dart';

class LedModeListAlertView extends StatefulWidget {
  final Function(LedMode) callbackUpdateMode;

  const LedModeListAlertView({super.key, required this.callbackUpdateMode});
  static const routeName = '/led_modes';

  @override
  State<LedModeListAlertView> createState() => _LedModeListAlertViewState();
}

class _LedModeListAlertViewState extends State<LedModeListAlertView> {
  late Function(LedMode) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    callbackUpdateMode = widget.callbackUpdateMode;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
        listener: (BuildContext context, state) {
          context.read<LedModeGRPCBloc>().add(ServerChangedEvent(
              colorModeGrpcClient: ColorModeCommunication(
                  serverName: state.serverName, serverPort: state.serverPort),
              patternModeGrpcClient: PatternModeCommunication(
                  serverName: state.serverName, serverPort: state.serverPort)));
        },
        child: Scaffold(
          body: BlocBuilder<LedModeGRPCBloc, LedModeState>(
              builder: (context, state) {
            if (state is LedModeListInitial) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LedModeListError) {
              return Center(
                child: Text("Error: ${state.message}"),
              );
            } else if (state is LedModeListSuccess) {
              return ListView.builder(
                  restorationId: 'LedModeListAlertView',
                  itemCount: state.modes.length,
                  itemBuilder: (BuildContext context, int index) {
                    String name = state.modes.keys.elementAt(index);

                    return ListTile(
                      title: Column(children: [
                        Text('LedMode $name'),
                        LedModePreview(mode: state.modes[name]!)
                      ]),
                      onTap: () {
                        callbackUpdateMode(state.modes[name]!);
                        Navigator.of(context).pop();
                      },
                      // onLongPress: () {
                      //   LedModePreview(mode: state.modes[name]!);
                      // },
                    );
                  });
            } else {
              return const SizedBox(); // Handle unexpected states
            }
          }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<LedModeGRPCBloc>().add(GetLedModeListEvent());
            },
            tooltip: 'Refresh',
            child: const Icon(Icons.refresh),
          ),
        ));
  }
}
