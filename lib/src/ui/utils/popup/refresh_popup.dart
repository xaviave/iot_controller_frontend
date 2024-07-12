import 'package:flutter/material.dart';
import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class RefreshPopup extends AbstractPopup {
  const RefreshPopup({
    super.key,
    super.icon = Icons.refresh,
    super.name = "refresh",
    required super.heroTag,
    required super.onPressedCallBack,
  });

  @override
  State<RefreshPopup> createState() => _RefreshPopupState();
}

class _RefreshPopupState extends AbstractPopupState<RefreshPopup> {
  @override
  void initState() {
    super.initState();
    onPressedCallBack = widget.onPressedCallBack;
  }
}
