import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/celery_tasks/interval_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

const periods = ["days", "hours", "minutes", "seconds", "microseconds"];

class IntervalScheduleForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final void Function(BuildContext context, Schedule s) callbackAddSchedule;

  const IntervalScheduleForm({
    super.key,
    required this.callbackAddSchedule,
    required this.formKey,
  });

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Interval Schedule";
  }

  @override
  IntervalScheduleFormState createState() => IntervalScheduleFormState();
}

class IntervalScheduleFormState extends State<IntervalScheduleForm> {
  final _everyController = TextEditingController();
  final _periodController = SingleSelectController<String>(periods[0]);

  void execCallback(BuildContext context) {
    widget.callbackAddSchedule(
        context,
        IntervalSchedule(
            id: -1,
            every: int.parse(_everyController.text),
            period: _periodController.value!));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _everyController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Select interval manually',
              hintText: ''),
          validator: (value) {
            if (value != null && value.isEmpty && int.tryParse(value) != null) {
              return 'Please enter a number.';
            }
            execCallback(context);
            return null;
          },
        ),
        const SizedBox(height: 10),
        CustomDropdown<String>(
            hintText: 'Select period',
            items: periods,
            onChanged: (value) {
              setState(() => _periodController.value = value);
            },
            validator: (value) {
              if (value == null) {
                return "Select a period";
              }
              execCallback(context);
              return null;
            },
            decoration: CustomDropdownDecoration(
              closedFillColor: Theme.of(context).colorScheme.surface,
              expandedFillColor: Theme.of(context).colorScheme.surface,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              listItemDecoration: ListItemDecoration(
                selectedColor: Theme.of(context).colorScheme.primary,
                highlightColor: Theme.of(context).colorScheme.primary,
              ),
            )),
      ],
    );
  }

  @override
  void dispose() {
    _everyController.dispose();
    super.dispose();
  }
}
