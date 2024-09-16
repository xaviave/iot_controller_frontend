import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/periodic_task.dart';
import 'package:iot_controller/src/models/celery_tasks/periodic_task.dart';

class PeriodicTaskMinimalDetailsView extends StatefulWidget {
  final int taskIndex;

  const PeriodicTaskMinimalDetailsView({super.key, required this.taskIndex});

  @override
  State<PeriodicTaskMinimalDetailsView> createState() =>
      _PeriodicTaskMinimalDetailsViewState();
}

class _PeriodicTaskMinimalDetailsViewState
    extends State<PeriodicTaskMinimalDetailsView> {
  void updatePeriodicTask(BuildContext context, Map<String, dynamic> fields) {
    PeriodicTaskState state =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

    context.read<PeriodicTaskGRPCBloc>().add(PartialUpdatePeriodicTaskEvent(
        task: state.tasks[widget.taskIndex],
        fields: fields,
        tasks: state.tasks));
  }

  @override
  Widget build(BuildContext context) {
    PeriodicTaskState state =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;
    PeriodicTask task = state.tasks[widget.taskIndex];

    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  task.name.capitalize,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                ),
                // Switch(
                //                             value: product.status == Status.on,
                //                             activeColor: Colors.yellow,
                //                             onChanged: (bool value) {
                //                               setState(() {
                //                                 updateProduct(context, {
                //                                   "status": (value ? Status.on : Status.off).id
                //                                 });
                //                               });
                //                             },
                //                           ),
              ]),
              Text(task.getSchedule().toString())
            ])));
  }
}
