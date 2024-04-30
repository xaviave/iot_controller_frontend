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
  Map<String, PatternMode> patterns = <String, PatternMode>{};
  late Function(LedMode, BuildContext) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
    callbackUpdateMode = widget.callbackUpdateMode;
    // patterns = Provider.of<LedModeProvider>(context).patternModes;
    //   need the list of color else, the palette can't be init and make the provider crash
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
          Wrap(
              children: mode.palette
                  .map((e) => Container(
                        margin: const EdgeInsets.all(10),
                        width: 50,
                        height: 50,
                        color: e,
                      ))
                  .toList())
        ],
      ),
    );
  }
}
