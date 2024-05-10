import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iot_controller/src/providers/category.dart';
import 'package:iot_controller/src/providers/led_mode.dart';
import 'package:iot_controller/src/providers/product.dart';
import 'package:iot_controller/src/providers/project.dart';
import 'package:iot_controller/src/ui/project/project_list_view.dart';
import 'package:iot_controller/src/ui/settings/settings_view.dart';
import 'package:provider/provider.dart';

import 'blocs/settings_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // could add an auth bloc there
    return BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(),
        child:
            BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
          return BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, state) {
            return MultiProvider(
                providers: [
                  ChangeNotifierProvider<CategoryProvider>(
                    create: (context) => CategoryProvider(),
                  ),
                  ChangeNotifierProvider<LedModeProvider>(
                    create: (context) => LedModeProvider(),
                  ),
                  ChangeNotifierProvider<BaseProductProvider>(
                    create: (context) => BaseProductProvider(),
                  ),
                  ChangeNotifierProvider<ProjectProvider>(
                    create: (context) => ProjectProvider(),
                  ),
                ],

                // return MultiBlocProvider(providers: [
                //   // BlocProvider<LedModeGRPCBloc>(
                //   //   create: (BuildContext context) => LedModeGRPCBloc(),
                //   // ),
                //   // BlocProvider<BaseProductGRPCBloc>(
                //   //   create: (BuildContext context) => BaseProductGRPCBloc(),
                //   // ),
                //   // BlocProvider<ProjectGRPCBloc>(
                //   //   create: (BuildContext context) => ProjectGRPCBloc(),
                //   // ),
                //   // BlocProvider<CategoryGRPCBloc>(
                //   //   create: (BuildContext context) => CategoryGRPCBloc(),
                //   // ),
                // ], child: const ProjectListView());

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
                          switch (routeSettings.name) {
                            case SettingsView.routeName:
                              return const SettingsView();
                            case ProjectListView.routeName:
                            default:
                              return const ProjectListView();
                          }
                        },
                      );
                    }));
          });
        }));
  }
}
