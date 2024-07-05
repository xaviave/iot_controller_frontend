import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

class AbstractPopup extends StatefulWidget {
  final String name;
  final String heroTag;
  final IconData icon;
  final double smallButton;
  final double bigButton;
  final Alignment displacement;

  // Class variable to override
  final Function onPressedCallBack;

  AbstractPopup({
    super.key,
    required this.name,
    required this.heroTag,
    required this.icon,
    required this.onPressedCallBack,
    this.smallButton = 56,
    this.bigButton = 150,
    this.displacement = Alignment.bottomRight,
  });

  @override
  State<AbstractPopup> createState() => AbstractPopupState();
}

class AbstractPopupState<T extends AbstractPopup> extends State<T> {
  bool isHovered = false;

  late IconData icon;
  late String name;
  late String heroTag;
  late double smallButton;
  late double bigButton;
  late Alignment displacement;

  // should return a Future<bool>
  Function onPressedCallBack = (_) => {};

  @override
  void initState() {
    super.initState();
    name = widget.name;
    heroTag = widget.heroTag;
    icon = widget.icon;
    smallButton = widget.smallButton;
    bigButton = widget.bigButton;
    displacement = widget.displacement;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: displacement,
        child: MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.deepOrange],
                      ),
                    ),
                    width: isHovered ? bigButton : smallButton,
                    child: FloatingActionButton.extended(
                        onPressed: () {
                          onPressedCallBack(context).then((result) {
                            if (!result) print("failed | show error");
                          });
                        },
                        heroTag: heroTag,
                        backgroundColor: Colors.transparent,
                        label: Row(children: [
                          Icon(icon),
                          isHovered
                              ? Text("\t${name.capitalize}")
                              : const SizedBox(),
                        ]))))));
  }
}
