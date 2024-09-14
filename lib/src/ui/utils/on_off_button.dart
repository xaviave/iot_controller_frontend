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
  @override
  Widget build(BuildContext context) {
    bool isOn = widget.status == Status.on ? true : false;

    return Switch(
      value: isOn,
      activeColor: Colors.yellow,
      onChanged: (bool value) {
        setState(() {
          widget.callbackUpdateStatus(
              context, {"status": (value ? Status.on : Status.off).id});
        });
      },
    );
  }
}
