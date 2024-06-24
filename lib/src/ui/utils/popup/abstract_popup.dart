import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

class AbstractPopup extends StatefulWidget {
  final String name;
  final String heroTag;

  // Class variable to override
  Widget popupWidget = Container();
  final Function onPressedCallBack;

  AbstractPopup({
    super.key,
    required this.name,
    required this.heroTag,
    required this.onPressedCallBack,
  });

  @override
  State<AbstractPopup> createState() => AbstractPopupState();
}

class AbstractPopupState<T extends AbstractPopup> extends State<T> {
  bool isHovered = false;

  late IconData icon;
  late String name;
  late String heroTag;

  Widget popupWidget = Container();
  // should return a Future<bool>
  Function onPressedCallBack = (_) => {};

  @override
  void initState() {
    super.initState();
    icon = Icons.refresh;
    name = widget.name;
    heroTag = widget.heroTag;
  }

  @override
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
