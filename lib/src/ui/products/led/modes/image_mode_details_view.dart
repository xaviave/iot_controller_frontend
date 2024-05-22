import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/products/led/led_mode.dart';

class ImageModeDetailsView extends StatefulWidget {
  final ImageMode mode;
  final Function(LedMode) callbackUpdateMode;

  const ImageModeDetailsView(
      {super.key, required this.mode, required this.callbackUpdateMode});

  @override
  State<ImageModeDetailsView> createState() => _ImageModeDetailsViewState();
}

class _ImageModeDetailsViewState extends State<ImageModeDetailsView> {
  late ImageMode mode;
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

class ImageModePreview extends StatelessWidget {
  final ImageMode mode;

  const ImageModePreview({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Image.network(mode.image_low_pixel as String);
  }
}
