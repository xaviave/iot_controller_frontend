import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/product.dart';
import 'package:iot_controller/src/blocs/project.dart';
import 'package:iot_controller/src/blocs/user.dart';
import 'package:iot_controller/src/models/products/base_product.dart';
import 'package:iot_controller/src/models/project.dart';

class ProjectForm extends StatefulWidget {
  const ProjectForm({super.key});

  @override
  ProjectFormState createState() {
    return ProjectFormState();
  }
}

class ProjectFormState extends State<ProjectForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _productController = MultiSelectController<BaseProduct>([]);

  Project generateProject(String name, List<BaseProduct> products) {
    final state = context.read<UserGRPCBloc>().state;
    // user need to be logged in to access there.
    final activeUser = (state as AddActiveUserEventSuccess).activeUser;
    return Project(
        id: -1,
        owner: activeUser,
        name: name,
        pubDate: DateTime.now(),
        products: products);
  }

  @override
  Widget build(BuildContext context) {
    context.read<BaseProductGRPCBloc>().add(GetBaseProductListEvent(null));
    return BlocBuilder<BaseProductGRPCBloc, BaseProductState>(
        builder: (context, state) {
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
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
                multiSelectController: _productController,
                hintText: 'Select products',
                items: state.products,
                onListChanged: (value) {
                  // print('changing value to: $value');
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
                    _productController.clear();
                  },
                  child: const Text(
                    'Clear',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                )),
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
                        ProjectState state =
                            BlocProvider.of<ProjectGRPCBloc>(context).state;

                        context.read<ProjectGRPCBloc>().add(CreateProjectEvent(
                            project: generateProject(
                                _nameController.text, _productController.value),
                            projects: state.projects));
                        print("Check if needed");
                        // context
                        //     .read<ProjectGRPCBloc>()
                        //     .add(GetProjectListEvent());
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

  @override
  void dispose() {
    _productController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
