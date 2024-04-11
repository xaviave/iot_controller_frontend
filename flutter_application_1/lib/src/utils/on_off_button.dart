import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/led_panel.dart';
import 'package:flutter_application_1/src/models/status.dart';

class OnOffButton extends StatefulWidget {
  // should use BaseProduct but it doesn't have a default status yet
  // should maybe change juste one value
  LedPanel product;
  OnOffButton({super.key, required this.product});

  @override
  _OnOffButtonState createState() => _OnOffButtonState();
}

class _OnOffButtonState extends State<OnOffButton> {
  bool isOn = false;
  late LedPanel product;

  void initState() {
    product = widget.product;
  }

  void _toggleOnOff() {
    setState(() {
      isOn = !isOn;
      product.status = isOn ? Status.on : Status.off;
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
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// Example usage:
// OnOffButton(),
