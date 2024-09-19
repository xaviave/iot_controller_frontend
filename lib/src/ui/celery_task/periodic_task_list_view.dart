import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/periodic_task.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/celery_tasks/periodic_task.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/celery_task/periodic_task_create_view.dart';
import 'package:iot_controller/src/ui/celery_task/periodic_task_minimal_view.dart';
import 'package:iot_controller/src/ui/utils/customColors.dart';

class PeriodicTaskListView extends StatefulWidget {
  final int classId;
  final String classType;

  const PeriodicTaskListView({
    super.key,
    required this.classId,
    required this.classType,
  });

  @override
  State<PeriodicTaskListView> createState() => _PeriodicTaskListViewState();
}

class _PeriodicTaskListViewState extends State<PeriodicTaskListView> {
  Future<bool> refreshPeriodicTaskList(BuildContext context) async {
    context.read<PeriodicTaskGRPCBloc>().add(GetPeriodicTaskListEvent(null));
    return true;
  }

  void callbackCreatePeriodicTask(PeriodicTask task) {
    PeriodicTaskState state =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

    context
        .read<PeriodicTaskGRPCBloc>()
        .add(CreatePeriodicTaskEvent(task: task, tasks: state.tasks));
  }

  void callbackDeletePeriodicTask(int index, List<PeriodicTask> tasks) {
    context.read<PeriodicTaskGRPCBloc>().add(DestroyPeriodicTaskEvent(
        periodicTaskName: tasks[index].name, tasks: tasks));
  }

  Widget decorationBlock(BuildContext context, Widget bodyView) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
        decoration: BoxDecoration(
            color: customColors.lightBackground,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: bodyView);
  }

  Widget buttonDecoration(String title, Function callbackButton,
      {Widget? callbackWidget,
      Function? callbackClosePopup,
      Function? callbackSubmit,
      bool submitButtons = true}) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
            onPressed: () {
              if (callbackWidget != null) {
                callbackButton(context, title, callbackWidget,
                    callbackClosePopup, submitButtons, callbackSubmit);
              } else {
                callbackButton(context);
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 15,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            )));
  }

  void confirmationPopup(
      BuildContext context,
      String title,
      Widget callbackWidget,
      Function? callbackClosePopup,
      bool submitButtons,
      Function? callbackSubmit) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => PopScope(
            onPopInvokedWithResult: (bool didPop, _) {
              if (callbackClosePopup != null) {
                callbackClosePopup();
              }
            },
            child: AlertDialog(
                title: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
                insetPadding: const EdgeInsets.all(16),
                content: SizedBox(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                  callbackWidget,
                  const SizedBox(height: 10),
                  () {
                    if (submitButtons) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (callbackSubmit != null) {
                                callbackSubmit(context);
                              }
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Submit',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }()
                ])))));
  }

  Widget bodyListView() {
    return BlocBuilder<PeriodicTaskGRPCBloc, PeriodicTaskState>(
        builder: (context, state) {
      if (state is PeriodicTaskListInitial) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is PeriodicTaskListSuccess ||
          state is GetPeriodicTaskSuccess ||
          state is QueryPeriodicTaskSuccess ||
          state is DestroyPeriodicTaskSuccess ||
          state is CreatePeriodicTaskSuccess ||
          // loading here to avoid flickering | should notify
          state is PeriodicTaskLoading) {
        return ListView.separated(
          restorationId: 'PeriodicTaskListView',
          itemCount: state.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              // title: Text("aaa"),
              title: PeriodicTaskMinimalDetailsView(taskIndex: index),
              onTap: () {},
              onLongPress: () {
                callbackDeletePeriodicTask(index, state.tasks);
              },
            );
          },
          separatorBuilder: (context, index) =>
              Divider(color: Theme.of(context).colorScheme.secondary),
        );
      } else {
        // PeriodicTaskError
        return Center(
          child: Text("Error: ${state.message}"),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
        listener: (BuildContext context, state) {
      context
          .read<PeriodicTaskGRPCBloc>()
          .add(ServerChangedEvent(PeriodicTaskCommunication(
            serverName: state.serverName,
            serverPort: state.serverPort,
          )));
    }, child: () {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: bodyListView()),
            const SizedBox(height: 10),
            decorationBlock(
                context,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttonDecoration("Refresh Tasks", refreshPeriodicTaskList),
                    const SizedBox(width: 20),
                    buttonDecoration("Create Task", confirmationPopup,
                        callbackWidget:
                            PeriodicTaskForm(classType: widget.classType),
                        submitButtons: false),
                  ],
                ))
          ]);
    }());
  }
}
