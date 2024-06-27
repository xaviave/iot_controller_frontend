import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class CreatePopup extends AbstractPopup {
  final Widget form;
  final String formName;

  CreatePopup(
      {super.key,
      super.name = "create",
      super.icon = Icons.add,
      required super.heroTag,
      required super.onPressedCallBack,
      required this.form,
      required this.formName});

  @override
  State<CreatePopup> createState() => _CreatePopupState();
}

class _CreatePopupState extends AbstractPopupState<CreatePopup> {
  late Widget form;
  late String formName;

  Future<bool> displayFormCallBack(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(
                "${name.capitalize} ${formName.capitalize}",
                textAlign: TextAlign.center,
              ),
              insetPadding: const EdgeInsets.all(50),
              content: SizedBox(
                  width: MediaQuery.of(context).size.width, child: form),
            ));
    return true;
  }

  @override
  void initState() {
    super.initState();
    form = widget.form;
    formName = widget.formName;

    onPressedCallBack = displayFormCallBack;
  }
}
