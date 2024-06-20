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
  bool isHoveredCreate = false;
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
                          Text("Led mode '$name'"),
                          LedModePreview(mode: state.modes[name]!)
                        ]),
                        onTap: () {
                          callbackUpdateMode(state.modes[name]!);
                          Navigator.of(context).pop();
                        },
                      );
                    });
              } else {
                return const SizedBox(); // Handle unexpected states
              }
            }),
            floatingActionButton: Align(
                alignment: Alignment.bottomRight,
                child: MouseRegion(
                    onEnter: (_) => setState(() => isHoveredCreate = true),
                    onExit: (_) => setState(() => isHoveredCreate = false),
                    child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 250),
                        child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.deepOrange],
                              ),
                            ),
                            width: isHoveredCreate ? 150 : 56,
                            child: FloatingActionButton.extended(
                                onPressed: () {
                                  // redirect to create form pop up
                                },
                                heroTag: "led_mode_create",
                                backgroundColor: Colors.transparent,
                                label: Row(children: [
                                  const Icon(Icons.add),
                                  isHoveredCreate
                                      ? const Text("\tCreate")
                                      : const SizedBox(),
                                ]))))))));
  }
}
