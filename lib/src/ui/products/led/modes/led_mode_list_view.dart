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
  final bool onlyBody;
  final Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;

  const LedModeListView({
    super.key,
    this.onlyBody = false,
    required this.callbackUpdateProductLedMode,
  });

  @override
  State<LedModeListView> createState() => _LedModeListViewState();
}

class _LedModeListViewState extends State<LedModeListView> {
  late Function(BuildContext, Map<String, dynamic>)
      callbackUpdateProductLedMode;

  @override
  void initState() {
    super.initState();
    callbackUpdateProductLedMode = widget.callbackUpdateProductLedMode;
  }

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
        return ListView.builder(
            shrinkWrap: true,
            restorationId: 'LedModeListView',
            itemCount: state.modes.length,
            itemBuilder: (BuildContext context, int index) {
              String name = state.modes.elementAt(index).name;
              return ListTile(
                title: Column(children: [
                  Text("Led mode '$name'"),
                  LedModePreview(mode: state.modes[index])
                ]),
                onTap: () {
                  if (widget.onlyBody == false) {
                    callbackUpdateProductLedMode(
                      context,
                      {"mode": state.modes[index].getAbstractRequest()},
                    );
                    Navigator.of(context).pop();
                  } else {
                    callbackUpdateProductLedMode(
                      context,
                      {"mode": state.modes[index]},
                    );
                  }
                },
                onLongPress: () {
                  callbackDeleteLedMode(index, state.modes);
                },
              );
            });
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
      if (widget.onlyBody) {
        return SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: bodyListView());
      } else {
        return Scaffold(
            body: bodyListView(),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CreatePopup(
                  heroTag: "led_mode_create_button",
                  formName: "led mode",
                  form:
                      LedModeForm(callbackCreateLedMode: callbackCreateLedMode),
                  onPressedCallBack: (_) {},
                ),
                const SizedBox(height: 10),
                RefreshPopup(
                  heroTag: "led_mode_refresh_button",
                  onPressedCallBack: refreshLedModeList,
                )
              ],
            ));
      }
    }());
  }
}
