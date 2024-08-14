import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/status.dart';

class OnOffButton extends StatefulWidget {
  final Status status;
  final Function(BuildContext, Map<String, dynamic>) callbackUpdateStatus;

  const OnOffButton(
      {super.key, required this.status, required this.callbackUpdateStatus});

  @override
  State<OnOffButton> createState() => _OnOffButtonState();
}

class _OnOffButtonState extends State<OnOffButton> {
  late bool isOn;
  late Status status;

  @override
  void initState() {
    super.initState();
    status = widget.status;
    isOn = status == Status.on ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: isOn,
      activeColor: Colors.yellow,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          isOn = value;
          status = value ? Status.on : Status.off;
          widget.callbackUpdateStatus(context, {"status": status.id});
        });
      },
    );
  }
}
