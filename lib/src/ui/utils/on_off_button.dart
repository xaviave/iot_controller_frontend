import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/status.dart';

class OnOffButton extends StatefulWidget {
  final Status status;
  final Function(Map<String, dynamic>) callbackUpdateStatus;

  const OnOffButton(
      {super.key, required this.status, required this.callbackUpdateStatus});

  @override
  State<OnOffButton> createState() => _OnOffButtonState();
}

class _OnOffButtonState extends State<OnOffButton> {
  late bool isOn;
  late Status status;

  late Function(Map<String, dynamic>) callbackUpdateStatus;

  @override
  void initState() {
    super.initState();
    status = widget.status;
    isOn = status == Status.on ? true : false;
    callbackUpdateStatus = widget.callbackUpdateStatus;
  }

  void _toggleOnOff() {
    setState(() {
      isOn = !isOn;
      status = isOn ? Status.on : Status.off;
      callbackUpdateStatus({"status": status.id});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleOnOff,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isOn ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isOn ? Icons.power_settings_new : Icons.power_off,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              isOn ? 'ON' : 'OFF',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
