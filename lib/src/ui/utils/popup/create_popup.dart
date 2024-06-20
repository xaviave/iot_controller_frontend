import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

class CreatePopup extends StatefulWidget {
  final Widget form;
  final String formName;

  const CreatePopup({super.key, required this.formName, required this.form});

  @override
  State<CreatePopup> createState() => _CreatePopupState();
}

class _CreatePopupState extends State<CreatePopup> {
  bool isHoveredCreate = false;
  late String formName;
  late Widget form;

  @override
  void initState() {
    super.initState();
    form = widget.form;
    formName = widget.formName;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: MouseRegion(
            onEnter: (_) => setState(() => isHoveredCreate = true),
            onExit: (_) => setState(() => isHoveredCreate = false),
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
                    width: isHoveredCreate ? 150 : 56,
                    child: FloatingActionButton.extended(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(
                                      "Create ${formName.capitalize}",
                                      textAlign: TextAlign.center,
                                    ),
                                    insetPadding: const EdgeInsets.all(50),
                                    content: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: form),
                                    actions: [
                                      TextButton(
                                        child: const Text("Cancel"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  ));
                        },
                        heroTag: "${formName}_create",
                        backgroundColor: Colors.transparent,
                        label: Row(children: [
                          const Icon(Icons.add),
                          isHoveredCreate
                              ? const Text("\tCreate")
                              : const SizedBox(),
                        ]))))));
  }
}
