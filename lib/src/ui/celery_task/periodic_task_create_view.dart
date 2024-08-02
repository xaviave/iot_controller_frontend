import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/periodic_task.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/models/celery_tasks/periodic_task.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';
import 'package:iot_controller/src/ui/utils/capitalize.dart';

import 'clocked_schedule_create_view.dart';
import 'crontab_schedule_create_view.dart';

class PeriodicTaskForm extends StatefulWidget {
  const PeriodicTaskForm({super.key});

  @override
  PeriodicTaskFormState createState() {
    return PeriodicTaskFormState();
  }
}

class PeriodicTaskFormState extends State<PeriodicTaskForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _taskController = TextEditingController();

  Schedule? schedule;
  late Widget _scheduleTypeController;
  late List<Widget> scheduleTypes;

  PeriodicTask generatePeriodicTask(
    String name,
    String task,
    String kwargs,
    Map<String, dynamic> fields,
  ) {
    print("$name $task $kwargs $fields");
    return PeriodicTask(
      name: name,
      task: task,
      kwargs: kwargs,
      interval: fields["interval"],
      crontab: fields["crontab"],
      solar: fields["solar"],
      clocked: fields["clocked"],
    );
  }

  @override
  void initState() {
    super.initState();
    scheduleTypes = [
      ClockedScheduleForm(callbackAddSchedule: addSchedule, formKey: _formKey),
      CrontabScheduleForm(callbackAddSchedule: addSchedule, formKey: _formKey),
      // IntervalScheduleForm(callbackAddSchedule: addSchedule, formKey: _formKey),
      // SolarScheduleForm(callbackAddSchedule: addSchedule, formKey: _formKey),
    ];
    _scheduleTypeController = scheduleTypes[0];
  }

  void addSchedule(BuildContext context, Schedule s) {
    setState(() => schedule = s);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Periodic task name',
            ),
            validator: (value) {
              return (value != null && value.isEmpty)
                  ? 'Please enter a name.'
                  : null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _taskController,
            decoration: const InputDecoration(
              labelText: 'Periodic task action',
            ),
            validator: (value) {
              return (value != null && value.isEmpty)
                  ? 'Please enter a task.'
                  : null;
            },
          ),
          Center(
              child: DropdownButton<Widget>(
            value: _scheduleTypeController,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            onChanged: (Widget? value) {
              setState(() => _scheduleTypeController = value!);
            },
            items: scheduleTypes.map<DropdownMenuItem<Widget>>((Widget value) {
              return DropdownMenuItem<Widget>(
                value: value,
                child: Text(value.toString().capitalize),
              );
            }).toList(),
          )),
          const SizedBox(height: 16),
          _scheduleTypeController,
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
                      ProjectState projectState =
                          BlocProvider.of<ProjectGRPCBloc>(context).state;
                      PeriodicTaskState state =
                          BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

                      context.read<PeriodicTaskGRPCBloc>().add(
                          CreatePeriodicTaskEvent(
                              task: generatePeriodicTask(
                                  _nameController.text,
                                  _taskController.text,
                                  "'class_type': 'Project', 'class_id': '${projectState.project!.id}'",
                                  {schedule!.name: schedule!}),
                              tasks: state.tasks));
                      context
                          .read<PeriodicTaskGRPCBloc>()
                          .add(GetPeriodicTaskListEvent());
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
    _nameController.dispose();
    _taskController.dispose();
    super.dispose();
  }
}
