import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/models/products/led/led_mode.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';

class ImageModeDetailsView extends StatefulWidget {
  final ImageMode mode;

  const ImageModeDetailsView({super.key, required this.mode});

  @override
  State<ImageModeDetailsView> createState() => _ImageModeDetailsViewState();
}

class _ImageModeDetailsViewState extends State<ImageModeDetailsView> {
  late ImageMode mode;

  @override
  void initState() {
    super.initState();
    mode = widget.mode;
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
