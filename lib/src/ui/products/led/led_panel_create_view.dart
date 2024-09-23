import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/products/led/led_panel.dart';
import 'package:iot_controller/src/models/status.dart';

import 'modes/led_mode_list_view.dart';

class LedPanelForm extends StatelessWidget {
  final name = "led panel";
  final Function(BuildContext, BaseProduct) callbackAddBaseProduct;
  const LedPanelForm({super.key, required this.callbackAddBaseProduct});

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return name;
  }

  void updateMode(BuildContext context, Map<String, dynamic> fields) {
    callbackAddBaseProduct(
        context,
        LedPanel(
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
    return Expanded(
        child: LedModeListView(
      abstractRequest: false,
      callbackUpdateProductLedMode: updateMode,
    ));
  }
}
