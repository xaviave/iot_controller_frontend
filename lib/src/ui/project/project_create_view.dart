import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/models/products/base_product.dart';

class ProjectForm extends StatefulWidget {
  const ProjectForm({super.key});

  @override
  ProjectFormState createState() {
    return ProjectFormState();
  }
}

class ProjectFormState extends State<ProjectForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseProductGRPCBloc, BaseProductState>(
        builder: (context, state) {
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Project name',
              ),
              validator: (value) {
                return (value != null && value.isEmpty)
                    ? 'Please enter a name.'
                    : null;
              },
            ),
            const SizedBox(height: 16),
            CustomDropdown<BaseProduct>.multiSelect(
                hintText: 'Select products',
                items: state.products.values.toList(),
                onListChanged: (value) {
                  print('changing value to: $value');
                },
                listValidator: (value) =>
                    value.isEmpty ? "Must not be null" : null,
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
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      //   do something
                    }
                    return;
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
