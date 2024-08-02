import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/periodic_task.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/celery_tasks/periodic_task.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/celery_task/periodic_task_create_view.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

class PeriodicTaskListView extends StatefulWidget {
  final bool onlyBody;
  final String classType;

  const PeriodicTaskListView({
    super.key,
    this.onlyBody = false,
    required this.classType,
  });

  @override
  State<PeriodicTaskListView> createState() => _PeriodicTaskListViewState();
}

class _PeriodicTaskListViewState extends State<PeriodicTaskListView> {
  Future<bool> refreshPeriodicTaskList(BuildContext context) async {
    context.read<PeriodicTaskGRPCBloc>().add(GetPeriodicTaskListEvent());
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

  Widget bodyListView() {
    return BlocBuilder<PeriodicTaskGRPCBloc, PeriodicTaskState>(
        builder: (context, state) {
      print("periodic task list view $state | ${state.tasks}");
      if (state is PeriodicTaskListInitial) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is PeriodicTaskListSuccess ||
          state is GetPeriodicTaskSuccess ||
          state is DestroyPeriodicTaskSuccess ||
          state is CreatePeriodicTaskSuccess ||
          // loading here to avoid flickering | should notify
          state is PeriodicTaskLoading) {
        return ListView.builder(
            shrinkWrap: true,
            restorationId: 'PeriodicTaskListView',
            itemCount: state.tasks.length,
            itemBuilder: (BuildContext context, int index) {
              String name = state.tasks.elementAt(index).name;
              return ListTile(
                title: Column(children: [
                  Text(name),
                  Text(state.tasks.elementAt(index).getSchedule().toString())
                  // PeriodicTaskPreview(task: state.tasks[index])
                ]),
                onTap: () {
                  if (widget.onlyBody == false) {
                    Navigator.of(context).pop();
                  }
                },
                onLongPress: () {
                  callbackDeletePeriodicTask(index, state.tasks);
                },
              );
            });
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
    refreshPeriodicTaskList(context);
    return BlocListener<SettingsBloc, SettingsState>(
        listener: (BuildContext context, state) {
      context
          .read<PeriodicTaskGRPCBloc>()
          .add(ServerChangedEvent(PeriodicTaskCommunication(
            serverName: state.serverName,
            serverPort: state.serverPort,
          )));
    }, child: () {
      if (widget.onlyBody) {
        return SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: bodyListView());
      } else {
        return Scaffold(
            body: bodyListView(),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CreatePopup(
                  heroTag: "task_create_button",
                  formName: "periodic task",
                  form: PeriodicTaskForm(classType: widget.classType),
                  onPressedCallBack: (_) {},
                ),
                const SizedBox(height: 10),
                RefreshPopup(
                  heroTag: "periodic_task_refresh_button",
                  onPressedCallBack: refreshPeriodicTaskList,
                )
              ],
            ));
      }
    }());
  }
}
