import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:iot_controller/src/models/celery_tasks/schedule.dart';
import 'package:iot_controller/src/models/celery_tasks/solar_schedule.dart';

const events = [
  "dawn_astronomical",
  "dawn_nautical",
  "dawn_civil",
  "sunrise",
  "solar_noon",
  "sunset",
  "dusk_civil",
  "dusk_nautical",
  "dusk_astronomical",
];

class SolarScheduleForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final void Function(BuildContext context, Schedule s) callbackAddSchedule;

  const SolarScheduleForm({
    super.key,
    required this.callbackAddSchedule,
    required this.formKey,
  });

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "Solar Schedule";
  }

  @override
  SolarScheduleFormState createState() => SolarScheduleFormState();
}

class SolarScheduleFormState extends State<SolarScheduleForm> {
  final _latitudeController = TextEditingController();
  final _longitudeController = TextEditingController();
  final _eventController = SingleSelectController<String>(events[0]);

  void execCallback(BuildContext context) {
    double latitude =
        double.parse(double.parse(_latitudeController.text).toStringAsFixed(6));
    double longitude = double.parse(
        double.parse(_longitudeController.text).toStringAsFixed(6));
    widget.callbackAddSchedule(
        context,
        SolarSchedule(
            id: -1,
            latitude: latitude,
            longitude: longitude,
            event: _eventController.value!));
  }

  void getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _latitudeController.text = position.latitude.toString();
      _longitudeController.text = position.longitude.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
            onPressed: getLocation,
            child: const Text("Set location automatically")),
        const SizedBox(height: 10),
        TextFormField(
          controller: _latitudeController,
          inputFormatters: [LengthLimitingTextInputFormatter(11)],
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Select latitude manually',
              hintText: ''),
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Please enter a latitude.';
            }
            execCallback(context);
            return null;
          },
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: _longitudeController,
          inputFormatters: [LengthLimitingTextInputFormatter(11)],
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Select longitude manually',
              hintText: ''),
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Please enter a longitude.';
            }
            execCallback(context);
            return null;
          },
        ),
        const SizedBox(height: 10),
        CustomDropdown<String>(
            hintText: 'Select an solar event',
            items: events,
            onChanged: (value) {
              setState(() => _eventController.value = value);
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
    _latitudeController.dispose();
    _longitudeController.dispose();
    super.dispose();
  }
}
