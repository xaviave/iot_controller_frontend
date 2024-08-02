import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_details_view.dart';
import 'package:iot_controller/src/ui/project/project_details_view.dart';
import 'package:iot_controller/src/ui/project/project_list_view.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';

extension GoRouterExtension on GoRouter {
  void clearStackAndNavigate(String location) {
    while (canPop()) {
      pop();
    }
    pushReplacement(location);
  }
}

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('did push route $previousRoute');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // print('did pop route $previousRoute');
  }
}

GoRouter getRoutes() {
  return GoRouter(initialLocation: '/', routes: <RouteBase>[
    GoRoute(
      name: ProjectListView.routeName,
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ProjectListView();
      },
      routes: <RouteBase>[
        GoRoute(
            name: ProjectDetailsView.routeName,
            path: 'project_detail',
            builder: (BuildContext context, GoRouterState state) {
              return const ProjectDetailsView();
            },
            routes: [
              GoRoute(
                name: BaseProductDetailsView.routeName,
                path: 'product_detail',
                builder: (BuildContext context, GoRouterState state) {
                  return const BaseProductDetailsView();
                },
              ),
            ]),
      ],
    ),
    GoRoute(
      name: SettingsView.routeName,
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsView();
      },
    ),
  ], observers: [
    MyNavigatorObserver()
  ]);
}
