import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/modes/led_mode.dart';
import 'package:iot_controller/src/models/products/led/modes/video_mode.dart';

class VideoModeDetailsView extends StatefulWidget {
  final VideoMode mode;
  final Function(LedMode) callbackUpdateMode;

  const VideoModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  State<VideoModeDetailsView> createState() => _VideoModeDetailsViewState();
}

class _VideoModeDetailsViewState extends State<VideoModeDetailsView> {
  late VideoMode mode;
  late Function(LedMode) callbackUpdateMode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
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
        ],
      ),
    );
  }
}

class VideoModePreview extends StatelessWidget {
  final VideoMode mode;

  const VideoModePreview({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Image.network(mode.videoLowPixel as String);
  }
}
