import 'package:flutter/material.dart';

class AbstractPopup extends StatefulWidget {
  final String name;
  final String heroTag;
  final String actionButtonText;

  const AbstractPopup(
      {super.key,
      required this.name,
      required this.heroTag,
      required this.actionButtonText});

  @override
  State<AbstractPopup> createState() => AbstractPopupState();
}

class AbstractPopupState extends State<AbstractPopup> {
  bool isHovered = false;
  late String name;
  late String heroTag;
  late String actionButtonText;
  Function(void) onPressedCallBack = (_) => {};

  @override
  void initState() {
    super.initState();
    name = widget.name;
    heroTag = widget.heroTag;
    actionButtonText = widget.actionButtonText;
  }

  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
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
                    width: isHovered ? 150 : 56,
                    child: FloatingActionButton.extended(
                        onPressed: () => onPressedCallBack(),
                        heroTag: heroTag,
                        backgroundColor: Colors.transparent,
                        label: Row(children: [
                          const Icon(Icons.add),
                          isHovered
                              ? Text("\t$actionButtonText")
                              : const SizedBox(),
                        ]))))));
  }
}
