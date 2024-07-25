import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/clocked_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';
import 'package:iot_controller/src/ui/celery_task/schedule_list_view.dart';
import 'package:intl/intl.dart';

class ScheduleForm extends StatelessWidget {
  final Widget form;
  final Function(BuildContext, Schedule) callbackAddSchedule;

  const ScheduleForm({
    super.key,
    required this.form,
    required this.callbackAddSchedule,
  });

  void updateMode(BuildContext context, Map<String, dynamic> fields) {
    // widget.callbackAddSchedule(context, Schedule(id: null));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // add button for this
        form,
        ScheduleListView(
          onlyBody: true,
          callbackUpdateSchedule: updateMode,
        ),
      ],
    );
  }
}

class ClockedScheduleForm extends StatefulWidget {
  final void Function(BuildContext context, Schedule s) callbackAddSchedule;

  const ClockedScheduleForm({super.key, required this.callbackAddSchedule});

  @override
  ClockedScheduleFormState createState() => ClockedScheduleFormState();
}

class ClockedScheduleFormState extends State<ClockedScheduleForm> {
  final f = DateFormat('yyyy-MM-ddThh:mm:ss');
  final _formKey = GlobalKey<FormState>();
  final _timeController = TextEditingController();
  final _dateController = TextEditingController();

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);
  TimeOfDay timeOfDay = TimeOfDay.now();

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeController.text = "${time.hour}:${time.minute}";
      });
    }
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateController.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _dateController,
            decoration: const InputDecoration(
                labelText: 'Date picker', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _timeController,
            decoration: const InputDecoration(
                labelText: 'Time picker', border: OutlineInputBorder()),
          ),
          ElevatedButton(
              onPressed: () => displayDatePicker(context),
              child: const Text("Pick Date")),
          ElevatedButton(
              onPressed: () => displayTimePicker(context),
              child: const Text("Pick Time")),
          const SizedBox(height: 16),
          Row(
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
                    if (_formKey.currentState!.validate()) {
                      // ScheduleState state =
                      //     BlocProvider.of<ScheduleGRPCBloc>(context).state;

                      // context.read<ScheduleGRPCBloc>().add(
                      //   CreateScheduleEvent(schedule:
                      //       ClockedSchedule(id=-1, clockedTime: f.format(_timeController.value)), schedules: state.schedules)
                      // );
                      widget.callbackAddSchedule(
                          context,
                          ClockedSchedule(
                              id: 0, clockedTime: _timeController.text));
                      Navigator.of(context).pop(true);
                    }
                    return;
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }
}
