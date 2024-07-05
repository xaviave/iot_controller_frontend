import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/led_mode.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/status.dart';

import 'modes/led_mode_create_view.dart';
import 'modes/led_mode_list_view.dart';

class LedPanelForm extends StatefulWidget {
  final name = "led panel";
  final Function(BaseProduct) callbackAddBaseProduct;
  const LedPanelForm({super.key, required this.callbackAddBaseProduct});

  @override
  LedPanelFormState createState() => LedPanelFormState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return name;
  }
}

class LedPanelFormState extends State<LedPanelForm> {
  late LedMode mode;
  late Function(BaseProduct) callbackAddBaseProduct;

  @override
  void initState() {
    super.initState();
    callbackAddBaseProduct = widget.callbackAddBaseProduct;
  }

  void updateMode(LedMode m, bool updateServer) {
    setState(() => mode = m);
    if (updateServer) {
      context.read<LedModeGRPCBloc>().add(CreateLedModeEvent(mode: m));
    }
    callbackAddBaseProduct(LedPanel(
      id: -1,
      name: "",
      ipPort: -1,
      ipAddress: "",
      categories: [],
      status: Status.off,
      brightness: 0,
      mode: mode,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                            title: const Text("Choose existing Mode"),
                            insetPadding: const EdgeInsets.all(50),
                            content: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LedModeListView(
                                  callbackUpdateLedMode: updateMode,
                                )),
                            actions: [
                              TextButton(
                                  child: const Text("Cancel"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ]));
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Use existing mode",
                    style: TextStyle(fontSize: 28),
                  )),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                            title: const Text("Create Mode"),
                            insetPadding: const EdgeInsets.all(50),
                            content: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: LedModeForm(
                                    callbackUpdateLedMode: updateMode)),
                            actions: [
                              TextButton(
                                  child: const Text("Cancel"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ]));
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Create mode",
                    style: TextStyle(fontSize: 28),
                  )),
            )
          ],
        ));
  }
}
