import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/providers/led_mode.dart';
import 'package:provider/provider.dart';

class PatternModeDetailsView extends StatefulWidget {
  final PatternMode mode;
  final Function(LedMode, BuildContext) callbackUpdateMode;

  const PatternModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  State<PatternModeDetailsView> createState() => _PatternModeDetailsViewState();
}

class _PatternModeDetailsViewState extends State<PatternModeDetailsView> {
  late PatternMode mode;
  late Function(LedMode, BuildContext) callbackUpdateMode;
  late Map<String, PatternMode> patterns;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    patterns = Provider.of<LedModeProvider>(context).patternModes;
    callbackUpdateMode = widget.callbackUpdateMode;
  }

  @override
  Widget build(BuildContext context) {
    // missing settings
    return Center(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
                mode.name,
                style: const TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              )),
          DropdownMenu<String>(
            initialSelection: mode.name,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                mode = patterns[value]!;
                callbackUpdateMode(mode, context);
              });
            },
            dropdownMenuEntries:
                patterns.keys.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          )
        ],
      ),
    );
  }
}
