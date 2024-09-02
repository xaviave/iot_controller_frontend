import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/products/led/modes/led_mode_details_view.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/delete_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

import 'led_mode_create_view.dart';

class LedModeListView extends StatefulWidget {
  final bool abstractRequest;
  final Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;

  const LedModeListView({
    super.key,
    this.abstractRequest = true,
    required this.callbackUpdateProductLedMode,
  });

  @override
  State<LedModeListView> createState() => _LedModeListViewState();
}

class _LedModeListViewState extends State<LedModeListView> {
  Future<bool> refreshLedModeList(BuildContext context) async {
    context.read<LedModeGRPCBloc>().add(GetLedModeListEvent(null));
    return true;
  }

  void callbackCreateLedMode(LedMode mode) {
    LedModeState state = BlocProvider.of<LedModeGRPCBloc>(context).state;

    context
        .read<LedModeGRPCBloc>()
        .add(CreateLedModeEvent(mode: mode, modes: state.modes));
  }

  void callbackDeleteLedMode(int index, List<LedMode> modes) {
    context
        .read<LedModeGRPCBloc>()
        .add(DestroyLedModeEvent(mode: modes[index], modes: modes));
  }

  Widget bodyListView() {
    return BlocBuilder<LedModeGRPCBloc, LedModeState>(
        builder: (context, state) {
      if (state is LedModeListInitial) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is LedModeListSuccess ||
          state is GetLedModeSuccess ||
          state is DestroyLedModeSuccess ||
          state is CreateLedModeSuccess ||
          // loading here to avoid flickering | should notify
          state is LedModeLoading) {
        return SizedBox(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.75,
            child: ListView.builder(
                restorationId: 'LedModeListView',
                itemCount: state.modes.length,
                itemBuilder: (BuildContext context, int index) {
                  String name = state.modes.elementAt(index).name;
                  return ListTile(
                    title: Column(mainAxisSize: MainAxisSize.max, children: [
                      Text(name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          )),
                      LedModePreview(mode: state.modes[index])
                    ]),
                    onTap: () {
                      if (widget.abstractRequest == false) {
                        widget.callbackUpdateProductLedMode(
                          context,
                          {"mode": state.modes[index]},
                        );
                      } else {
                        widget.callbackUpdateProductLedMode(
                          context,
                          {"mode": state.modes[index].getAbstractRequest()},
                        );
                        Navigator.of(context).pop();
                      }
                    },
                    onLongPress: () {
                      callbackDeleteLedMode(index, state.modes);
                    },
                  );
                }));
      } else {
        // LedModeError
        return Center(
          child: Text("Error: ${state.message}"),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    refreshLedModeList(context);
    return BlocListener<SettingsBloc, SettingsState>(
        listener: (BuildContext context, state) {
      context.read<LedModeGRPCBloc>().add(ServerChangedEvent(
          colorModeGrpcClient: ColorModeCommunication(
              serverName: state.serverName, serverPort: state.serverPort),
          patternModeGrpcClient: PatternModeCommunication(
              serverName: state.serverName, serverPort: state.serverPort)));
    }, child: () {
      return bodyListView();
    }());
  }
}
