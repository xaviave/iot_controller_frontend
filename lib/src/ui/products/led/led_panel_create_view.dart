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

  void updateMode(Map<String, dynamic> fields) {
    callbackAddBaseProduct(LedPanel(
      id: -1,
      name: "",
      ipPort: -1,
      ipAddress: "",
      categories: [],
      status: Status.off,
      brightness: 0,
      mode: fields["mode"],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LedModeListView(
          onlyBody: true,
          callbackUpdateProductLedMode: updateMode,
        ),
      ],
    );
  }
}
