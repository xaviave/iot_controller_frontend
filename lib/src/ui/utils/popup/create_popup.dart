import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/utils/customColors.dart';
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
    final customColors = Theme.of(context).extension<CustomColors>()!;

    await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
            backgroundColor: customColors.lightBackground,
            title: Text("${name.capitalize} ${formName.capitalize}",
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                )),
            insetPadding: const EdgeInsets.all(50),
            content: SingleChildScrollView(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width, child: form))));
    return true;
  }

  @override
  void initState() {
    super.initState();
    form = widget.form;
    formName = widget.formName;
    name = "$name $formName";

    onPressedCallBack = displayFormCallBack;
  }
}
