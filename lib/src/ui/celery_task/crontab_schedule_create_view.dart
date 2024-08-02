import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:iot_controller/src/models/celery_tasks/crontab_schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';

final r = RegExp(r"(?:,|^)\s*(?<m>\*|\*/\d+|\d+-\d+(?:/\d+)?|\d+)\s*(?=,|$)");
const weekDays = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
];

class CrontabScheduleForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final void Function(BuildContext context, Schedule s) callbackAddSchedule;

  const CrontabScheduleForm({
    super.key,
    required this.callbackAddSchedule,
    required this.formKey,
  });

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Crontab Schedule";
  }

  @override
  CrontabScheduleFormState createState() => CrontabScheduleFormState();
}

class CrontabScheduleFormState extends State<CrontabScheduleForm> {
  // final String timezone = DateTime.now().timeZoneName;
  final String timezone = "None";
  final _minuteController = TextEditingController();
  final _hourController = TextEditingController();
  final _dayOfWeekController = MultiSelectController<String>([]);
  final _dayOfMonthController = TextEditingController();
  final _monthOfYearController = TextEditingController();

  bool validateCrontabSelections() {
    return _minuteController.text != "" ||
        _hourController.text != "" ||
        _dayOfWeekController.value.isNotEmpty ||
        _dayOfMonthController.text != "" ||
        _monthOfYearController.text != "";
  }

  bool validateCrontabValue(String s) {
    // Match one expr or many separated with a comma
    // * | number (\d+) | number-number (\d+-\d+) | */number (*/\d+)
    // number-number/number (\d+-\d+/\d+)
    int groupNumber = s.split(",").length;
    Iterable<RegExpMatch> matches = r.allMatches(s);
    // check if the regex groups are equal of the expected number of group
    print("matches: ${matches.length} | comma found: $groupNumber | str: '$s'");
    return matches.length != groupNumber;
  }

  String removeWhiteSpace(String s) {
    return r.allMatches(s).map((x) => x.namedGroup("m")).join(",");
  }

  void execCallback(BuildContext context) {
    widget.callbackAddSchedule(
        context,
        CrontabSchedule(
            id: -1,
            minute: _minuteController.text == ""
                ? "*"
                : removeWhiteSpace(_minuteController.text),
            hour: _hourController.text == ""
                ? "*"
                : removeWhiteSpace(_hourController.text),
            dayOfWeek: _dayOfWeekController.value.isEmpty
                ? "*"
                : _dayOfWeekController.value.join(","),
            dayOfMonth: _dayOfMonthController.text == ""
                ? "*"
                : removeWhiteSpace(_dayOfMonthController.text),
            monthOfYear: _monthOfYearController.text == ""
                ? "*"
                : removeWhiteSpace(_monthOfYearController.text),
            // Can't use Flutter timezone as the format is an abbreviation
            // we use the server timezone
            timezone: timezone));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Values added will be use as: 'run every X'"),
        const Text("Many values can be written with comma separation."),
        const Text("*/X means every values divided by X"),
        const Text("X-Y means every values between X and Y"),
        const Text("X-Y/2 means every values between X and Y that are even"),
        const SizedBox(height: 20),
        TextFormField(
          controller: _minuteController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Minutes Selection',
              hintText: ''),
          validator: (value) {
            if ((value != "" && validateCrontabValue(value!)) ||
                (value == "" && !validateCrontabSelections())) {
              return "Error in the value";
            }
            execCallback(context);
            return null;
          },
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _hourController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Hours Selection',
              hintText: ''),
          validator: (value) {
            if ((value != "" && validateCrontabValue(value!)) ||
                (value == "" && !validateCrontabSelections())) {
              return "Error in the value";
            }
            execCallback(context);
            return null;
          },
        ),
        const SizedBox(height: 20),
        CustomDropdown<String>.multiSelect(
            multiSelectController: _dayOfWeekController,
            hintText: 'Select day of week',
            items: weekDays,
            onListChanged: (value) {},
            listValidator: (value) {
              if (value.isNotEmpty) {
                execCallback(context);
              }
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
        const SizedBox(height: 20),
        TextFormField(
          controller: _dayOfMonthController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Days of Month Selection',
              hintText: ''),
          validator: (value) {
            if ((value != "" && validateCrontabValue(value!)) ||
                (value == "" && !validateCrontabSelections())) {
              return "Error in the value";
            }
            execCallback(context);
            return null;
          },
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _monthOfYearController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Months of Year Selection',
              hintText: ''),
          validator: (value) {
            if ((value != "" && validateCrontabValue(value!)) ||
                (value == "" && !validateCrontabSelections())) {
              return "Error in the value";
            }
            execCallback(context);
            return null;
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _minuteController.dispose();
    _hourController.dispose();
    _dayOfWeekController.dispose();
    _dayOfMonthController.dispose();
    _monthOfYearController.dispose();
    super.dispose();
  }
}
