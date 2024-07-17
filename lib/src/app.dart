import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_details_view.dart';
import 'package:iot_controller/src/ui/products/base_product/base_product_list_view.dart';
import 'package:iot_controller/src/ui/project/project_details_view.dart';
import 'package:iot_controller/src/ui/project/project_list_view.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'blocs/led_mode.dart';
import 'blocs/product.dart';
import 'blocs/project.dart';
import 'blocs/settings_bloc.dart';
import 'blocs/user.dart';

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;

  const MyApp({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    // Settings is the main bloc provider that provide the IP of the server
    // It allows every gRPC bloc to be init.
    return BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(prefs),
        child:
            BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
          return MultiBlocProvider(
              providers: [
                BlocProvider<UserGRPCBloc>(
                    create: (BuildContext context) => UserGRPCBloc(state)),
                BlocProvider<LedModeGRPCBloc>(
                    create: (BuildContext context) => LedModeGRPCBloc(state)),
                BlocProvider<BaseProductGRPCBloc>(
                    create: (BuildContext context) =>
                        BaseProductGRPCBloc(state)),
                BlocProvider<ProjectGRPCBloc>(
                    create: (BuildContext context) => ProjectGRPCBloc(state)),
                // BlocProvider<CategoryGRPCBloc>(
                //     create: (BuildContext context) => CategoryGRPCBloc(state)),
              ],
              child: MaterialApp(
                  restorationScopeId: 'app',
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('en', ''),
                  ],
                  onGenerateTitle: (BuildContext context) =>
                      AppLocalizations.of(context)!.appTitle,
                  theme: ThemeData(),
                  darkTheme: ThemeData.dark(),
                  themeMode: state.theme,
                  onGenerateRoute: (RouteSettings routeSettings) {
                    return MaterialPageRoute<void>(
                      settings: routeSettings,
                      builder: (BuildContext context) {
                        // can add redirection to connection
                        switch (routeSettings.name) {
                          case SettingsView.routeName:
                            return const SettingsView();
                          case BaseProductDetailsView.routeName:
                            return const BaseProductDetailsView();
                          case ProjectDetailsView.routeName:
                            return const ProjectDetailsView();
                          case ProjectListView.routeName:
                          default:
                            return const ProjectListView();
                        }
                      },
                    );
                  }));
        }));
  }
}
