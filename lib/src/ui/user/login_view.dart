import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/user.dart';
import 'package:iot_controller/src/models/user.dart';

class UserLoginForm extends StatefulWidget {
  const UserLoginForm({super.key});

  @override
  UserLoginFormState createState() {
    return UserLoginFormState();
  }
}

class UserLoginFormState extends State<UserLoginForm> {
  final _formKey = GlobalKey<FormState>();
  User? _userSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserGRPCBloc, UserState>(builder: (context, state) {
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDropdown<User>.search(
                items: context.read<UserGRPCBloc>().state.users,
                overlayHeight: 342,
                onChanged: (value) {
                  setState(() {
                    _userSelected = value;
                  });
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
            const SizedBox(height: 10),
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
                        context
                            .read<UserGRPCBloc>()
                            .add(AddActiveUserEvent(user: _userSelected!));
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
    });
  }
}
