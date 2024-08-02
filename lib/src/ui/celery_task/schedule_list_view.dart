import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/schedule.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';
import 'package:iot_controller/src/services/communication_service.dart';
import 'package:iot_controller/src/ui/celery_task/clocked_schedule_create_view.dart';
import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';

class ScheduleListView extends StatefulWidget {
  final bool onlyBody;
  final Function(BuildContext, Map<String, dynamic>) callbackUpdateSchedule;

  const ScheduleListView({
    super.key,
    this.onlyBody = false,
    required this.callbackUpdateSchedule,
  });

  @override
  State<ScheduleListView> createState() => _ScheduleListViewState();
}

class _ScheduleListViewState extends State<ScheduleListView> {
  late Function(BuildContext, Map<String, dynamic>) callbackUpdateSchedule;

  @override
  void initState() {
    super.initState();
    callbackUpdateSchedule = widget.callbackUpdateSchedule;
  }

  Future<bool> refreshScheduleList(BuildContext context) async {
    context.read<ScheduleGRPCBloc>().add(GetScheduleListEvent(null));
    return true;
  }

  void callbackCreateSchedule(BuildContext context, Schedule schedule) {
    ScheduleState state = BlocProvider.of<ScheduleGRPCBloc>(context).state;

    context.read<ScheduleGRPCBloc>().add(
        CreateScheduleEvent(schedule: schedule, schedules: state.schedules));
  }

  void callbackDeleteSchedule(int index, List<Schedule> schedules) {
    context.read<ScheduleGRPCBloc>().add(
        DestroyScheduleEvent(schedule: schedules[index], schedules: schedules));
  }

  Widget bodyListView() {
    return BlocBuilder<ScheduleGRPCBloc, ScheduleState>(
        builder: (context, state) {
      print("schedule list view $state | ${state.schedules}");
      if (state is ScheduleListInitial) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is ScheduleListSuccess ||
          state is GetScheduleSuccess ||
          state is DestroyScheduleSuccess ||
          state is CreateScheduleSuccess ||
          // loading here to avoid flickering | should notify
          state is ScheduleLoading) {
        return ListView.builder(
            shrinkWrap: true,
            restorationId: 'ScheduleListView',
            itemCount: state.schedules.length,
            itemBuilder: (BuildContext context, int index) {
              String name = state.schedules.elementAt(index).toString();
              return ListTile(
                title: Text("Led schedule '$name'"),
                onTap: () {
                  if (widget.onlyBody == false) {
                    callbackUpdateSchedule(
                      context,
                      {"schedule": state.schedules[index].getRequest()},
                    );
                    Navigator.of(context).pop();
                  } else {
                    callbackUpdateSchedule(
                      context,
                      {"schedule": state.schedules[index]},
                    );
                  }
                },
                onLongPress: () {
                  callbackDeleteSchedule(index, state.schedules);
                },
              );
            });
      } else {
        // ScheduleError
        return Center(
          child: Text("Error: ${state.message}"),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    refreshScheduleList(context);
    return BlocListener<SettingsBloc, SettingsState>(
        listener: (BuildContext context, state) {
      context.read<ScheduleGRPCBloc>().add(ServerChangedEvent(
            clockedScheduleGrpcClient: ClockedScheduleCommunication(
                serverName: state.serverName, serverPort: state.serverPort),
            crontabScheduleGrpcClient: CrontabScheduleCommunication(
                serverName: state.serverName, serverPort: state.serverPort),
            intervalScheduleGrpcClient: IntervalScheduleCommunication(
                serverName: state.serverName, serverPort: state.serverPort),
            solarScheduleGrpcClient: SolarScheduleCommunication(
                serverName: state.serverName, serverPort: state.serverPort),
          ));
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
                // CreatePopup(
                //   heroTag: "schedule_create_button",
                //   formName: "schedule",
                //   form: ScheduleForm(
                //       callbackAddSchedule: callbackCreateSchedule),
                //   onPressedCallBack: (_) {},
                // ),
                const SizedBox(height: 10),
                RefreshPopup(
                  heroTag: "schedule_refresh_button",
                  onPressedCallBack: refreshScheduleList,
                )
              ],
            ));
      }
    }());
  }
}
