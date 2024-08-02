import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/celery_tasks/clocked_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';
import 'package:intl/intl.dart';

class ClockedScheduleForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final void Function(BuildContext context, Schedule s) callbackAddSchedule;

  const ClockedScheduleForm({
    super.key,
    required this.callbackAddSchedule,
    required this.formKey,
  });

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Clocked Schedule";
  }

  @override
  ClockedScheduleFormState createState() => ClockedScheduleFormState();
}

class ClockedScheduleFormState extends State<ClockedScheduleForm> {
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2024);
  DateTime last = DateTime(2105);
  TimeOfDay timeOfDay = TimeOfDay.now();

  final f = DateFormat('yyyy-MM-ddThh:mm:ss');
  late TextEditingController _timeController;
  late TextEditingController _dateController;

  @override
  void initState() {
    _timeController =
        TextEditingController(text: "${timeOfDay.hour}:${timeOfDay.minute}");
    _dateController = TextEditingController(
        text: "${selected.day}/${selected.month}/${selected.year}");
    super.initState();
  }

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
        _dateController.text = "${date.day}/${date.month}/${date.year}";
      });
    }
  }

  String toClockedTime() {
    print(_timeController.text);
    print(_dateController.text);
    final DateTime time = DateFormat("hh:mm").parse(_timeController.text);
    final DateTime date = DateFormat("dd/MM/yyyy").parse(_dateController.text);
    return f.format(
        DateTime(date.year, date.month, date.day, time.hour, time.minute));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _timeController,
          readOnly: true,
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Please enter a time.';
            }
            widget.callbackAddSchedule(
                context, ClockedSchedule(id: -1, clockedTime: toClockedTime()));
            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => displayTimePicker(context),
          child: const Text("Pick Time"),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _dateController,
          readOnly: true,
          decoration: const InputDecoration(hintText: "dd/MM/yyyy"),
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Please enter a date.';
            }
            widget.callbackAddSchedule(
                context, ClockedSchedule(id: -1, clockedTime: toClockedTime()));
            return null;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => displayDatePicker(context),
          child: const Text("Pick Date"),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timeController.dispose();
    _dateController.dispose();
    super.dispose();
  }
}
