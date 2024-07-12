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
  final Function(Map<String, dynamic>) callbackUpdateLedMode;

  const LedModeListView({super.key, required this.callbackUpdateLedMode});
  static const routeName = '/led_modes';

  @override
  State<LedModeListView> createState() => _LedModeListViewState();
}

class _LedModeListViewState extends State<LedModeListView> {
  bool isHoveredCreate = false;
  late Function(Map<String, dynamic>) callbackUpdateLedMode;

  @override
  void initState() {
    super.initState();
    callbackUpdateLedMode = widget.callbackUpdateLedMode;
  }

  Future<bool> refreshLedModeList(BuildContext context) async {
    context.read<LedModeGRPCBloc>().add(GetLedModeListEvent());
    return true;
  }
//   void callbackDeleteLedMode(LedMode m) {
//   context.read<LedModeGRPCBloc>().add(
//   DestroyLedModeEvent(mode: m));
//   context
//       .read<LedModeGRPCBloc>()
//       .add(GetLedModeListEvent());
//   Navigator.of(context)
//       .pushNamedAndRemoveUntil('/products', (Route<dynamic> route) => false);
// }

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
                    restorationId: 'LedModeListView',
                    itemCount: state.modes.length,
                    itemBuilder: (BuildContext context, int index) {
                      String name = state.modes.keys.elementAt(index);
                      return ListTile(
                        title: Column(children: [
                          Text("Led mode '$name'"),
                          LedModePreview(mode: state.modes[name]!)
                        ]),
                        onTap: () {
                          callbackUpdateLedMode({"mode": state.modes[name]!});
                          Navigator.of(context).pop();
                        },
                      );
                    });
              } else {
                return const SizedBox(); // Handle unexpected states
              }
            }),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // DeletePopup(
                // objectName: "mode",
                // heroTag: "mode_delete_button",
                // deleteCallBack: callbackDeleteLedMode,
                // onPressedCallBack: () {}
                // ),
                // const SizedBox(height: 10),
                CreatePopup(
                  heroTag: "led_mode_create_button",
                  formName: "led mode",
                  form:
                      LedModeForm(callbackUpdateLedMode: callbackUpdateLedMode),
                  onPressedCallBack: (_) {},
                ),
                const SizedBox(height: 10),
                RefreshPopup(
                  heroTag: "led_mode_refresh_button",
                  onPressedCallBack: refreshLedModeList,
                )
              ],
            )));
  }
}
