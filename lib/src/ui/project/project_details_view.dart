// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:iot_controller/src/blocs/product.dart';
// import 'package:iot_controller/src/blocs/project.dart';
// import 'package:iot_controller/src/models/products/base_product.dart';
// import 'package:iot_controller/src/models/project.dart';
// import 'package:iot_controller/src/ui/products/base_product/base_product_create_view.dart';
// import 'package:iot_controller/src/ui/products/base_product/base_product_list_view.dart';
// import 'package:iot_controller/src/ui/settings/settings_view.dart';
// import 'package:iot_controller/src/ui/utils/capitalize.dart';
// import 'package:iot_controller/src/ui/utils/popup/create_popup.dart';
// import 'package:iot_controller/src/ui/utils/popup/delete_popup.dart';
// import 'package:iot_controller/src/ui/utils/popup/refresh_popup.dart';
//
// class ProjectDetailsView extends StatefulWidget {
//   final Project project;
//
//   const ProjectDetailsView({super.key, required this.project});
//
//   @override
//   State<ProjectDetailsView> createState() => _ProjectDetailsViewState();
// }
//
// class _ProjectDetailsViewState extends State<ProjectDetailsView> {
//   late Project project;
//   String errorMessage = "";
//
//   void callbackDeleteProject() {
//     context
//         .read<ProjectGRPCBloc>()
//         .add(DestroyProjectEvent(projectId: project.id));
//     context.read<ProjectGRPCBloc>().add(GetProjectListEvent());
//     Navigator.of(context)
//         .pushNamedAndRemoveUntil('/projects', (Route<dynamic> route) => false);
//   }
//
//   void updateProduct(BaseProduct p) {
//     context
//         .read<ProjectGRPCBloc>()
//         .add(PartialUpdateProjectEvent(project: project, fields: {
//           "products": {p.name: p}..addAll(project.products)
//         }));
//   }
//
//   Future<bool> refreshBaseProductList(BuildContext context) async {
//     print("should retrieve the project and update it / not list all products");
//     context.read<BaseProductGRPCBloc>().add(GetBaseProductListEvent());
//     return true;
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     project = widget.project;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<ProjectGRPCBloc, ProjectState>(
//         listenWhen: (previousState, state) {
//       return state is UpdateProjectEventError;
//     }, listener: (BuildContext context, state) {
//       if (state is UpdateProjectEventError) {
//         print(state.errorMessage);
//         //   send notif or snackbar
//       } else if (state is UpdateProjectEventSuccess) {
//         // setState(() => project = Project.fromResponse(state.project));
//         // return
//       }
//     }, buildWhen: (context, state) {
//       print("BuilderWhen $state");
//       return state is UpdateProjectEventSuccess;
//     }, builder: (BuildContext context, ProjectState state) {
//       // if (state is UpdateProjectEventSuccess) {}
//
//       return Scaffold(
//           appBar: AppBar(
//             title: Text(
//               project.name.capitalize,
//               style: const TextStyle(fontSize: 28),
//             ),
//             actions: [
//               IconButton(
//                 icon: const Icon(Icons.settings),
//                 onPressed: () {
//                   Navigator.restorablePushNamed(
//                       context, SettingsView.routeName);
//                 },
//               ),
//             ],
//           ),
//           body: Column(
//             children: [
//               Container(
//                   margin: const EdgeInsets.all(16),
//                   width: double.infinity,
//                   child: Text(
//                     "${project.owner.username.toUpperCase()}'s project\n"
//                     "Created on ${DateFormat.yMMMd().format(project.pubDate)}",
//                     style: const TextStyle(fontSize: 20),
//                   )),
//               Expanded(
//                 child: BaseProductListView(
//                   products: project.products,
//                   callbackUpdateProject: updateProduct,
//                 ),
//               ),
//             ],
//           ),
//           floatingActionButton: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               DeletePopup(
//                   name: "project",
//                   objectName: project.name,
//                   heroTag: "project_delete_button",
//                   deleteCallBack: callbackDeleteProject,
//                   onPressedCallBack: () {}),
//               const SizedBox(height: 10),
//               CreatePopup(
//                 formName: "product",
//                 heroTag: "product_create_button",
//                 form: BaseProductForm(callbackUpdateProject: updateProduct),
//                 onPressedCallBack: () {},
//               ),
//               const SizedBox(height: 10),
//               RefreshPopup(
//                 heroTag: "project_refresh_button",
//                 onPressedCallBack: refreshBaseProductList,
//               )
//             ],
//           ));
//     });
//   }
// }
