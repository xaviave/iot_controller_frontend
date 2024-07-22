import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/user.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class LoginPopup extends AbstractPopup {
  final Widget form;
  final String formName;

  LoginPopup(
      {super.key,
      super.name = "login",
      super.icon = Icons.login,
      super.smallButton = 400,
      super.bigButton = 400,
      super.displacement = Alignment.center,
      required super.heroTag,
      required super.onPressedCallBack,
      required this.form,
      required this.formName});

  @override
  State<LoginPopup> createState() => _LoginPopupState();
}

class _LoginPopupState extends AbstractPopupState<LoginPopup> {
  late Widget form;
  late String formName;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future<bool> displayFormCallBack(BuildContext context) async {
    context.read<UserGRPCBloc>().add(GetUserListEvent());
    final result = await showDialog(
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
    return result ?? false;
  }

  @override
  void initState() {
    super.initState();
    form = widget.form;
    formName = widget.formName;

    onPressedCallBack = displayFormCallBack;
  }
}
