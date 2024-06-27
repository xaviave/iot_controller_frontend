import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/models/project.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';
import 'package:iot_controller/src/ui/utils/popup/abstract_popup.dart';

class DeletePopup extends AbstractPopup {
  final Project project;

  DeletePopup(
      {super.key,
      super.name = "delete",
      super.icon = Icons.delete,
      required super.heroTag,
      required super.onPressedCallBack,
      required this.project});

  @override
  State<DeletePopup> createState() => _DeletePopupState();
}

class _DeletePopupState extends AbstractPopupState<DeletePopup> {
  late Project project;

  Future<bool> displayFormCallBack(BuildContext context) async {
    final result = await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(
                "Are you sure you want to delete the project '${project.name.capitalize}'",
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
                            context.read<ProjectGRPCBloc>().add(
                                DestroyProjectEvent(projectId: project.id));
                            context
                                .read<ProjectGRPCBloc>()
                                .add(GetProjectListEvent());
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/projects', (Route<dynamic> route) => false);
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
    project = widget.project;

    onPressedCallBack = displayFormCallBack;
  }
}
