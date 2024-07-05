import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class DeletePopup extends AbstractPopup {
  final String objectName;
  final Function deleteCallBack;

  DeletePopup(
      {super.key,
      super.icon = Icons.delete,
      required super.name,
      required super.heroTag,
      required super.onPressedCallBack,
      required this.deleteCallBack,
      required this.objectName});

  @override
  State<DeletePopup> createState() => _DeletePopupState();
}

class _DeletePopupState extends AbstractPopupState<DeletePopup> {
  late String objectName;
  late Function deleteCallBack;

  Future<bool> displayFormCallBack(BuildContext context) async {
    final result = await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(
                "Are you sure you want to delete the $name '${objectName.capitalize}'",
                textAlign: TextAlign.center,
              ),
              insetPadding: const EdgeInsets.all(50),
              content: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                            return;
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            deleteCallBack();
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  )),
            ));
    return true;
  }

  @override
  void initState() {
    super.initState();
    name = "delete ${widget.name}";
    objectName = widget.objectName;
    deleteCallBack = widget.deleteCallBack;

    onPressedCallBack = displayFormCallBack;
  }
}
