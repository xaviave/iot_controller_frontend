import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class RefreshPopup extends AbstractPopup {
  final Function(void) callback;

  const RefreshPopup(this.callback,
      {super.key,
      required super.name,
      required super.heroTag,
      required super.actionButtonText});

  @override
  _RefreshPopupState createState() => _RefreshPopupState();
}

class _RefreshPopupState extends AbstractPopupState {
  @override
  void initState() {
    super.initState();
    onPressedCallBack = widget.callback;
  }
}
