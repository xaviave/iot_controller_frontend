import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iot_controller/src/blocs/periodic_task.dart';
import 'package:iot_controller/src/router.dart';
import 'package:iot_controller/src/ui/utils/customColors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'blocs/schedule.dart';
import 'blocs/led_mode.dart';
import 'blocs/product.dart';
import 'blocs/project.dart';
import 'blocs/settings_bloc.dart';
import 'blocs/user.dart';

final _router = getRoutes();

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
                BlocProvider<PeriodicTaskGRPCBloc>(
                    create: (BuildContext context) =>
                        PeriodicTaskGRPCBloc(state)),
                BlocProvider<ScheduleGRPCBloc>(
                    create: (BuildContext context) => ScheduleGRPCBloc(state)),
                // BlocProvider<CategoryGRPCBloc>(
                //     create: (BuildContext context) => CategoryGRPCBloc(state)),
              ],
              child: MaterialApp.router(
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
                theme: ThemeData(
                  brightness: Brightness.light,
                  fontFamily: 'TitilliumWeb',
                ).copyWith(
                  extensions: <ThemeExtension<dynamic>>[
                    CustomColors.light,
                  ],
                ),
                darkTheme: ThemeData(
                  brightness: Brightness.dark,
                  fontFamily: 'TitilliumWeb',
                ).copyWith(
                  extensions: <ThemeExtension<dynamic>>[
                    CustomColors.dark,
                  ],
                ),
                themeMode: state.theme,
                routerConfig: _router,
              ));
        }));
  }
}
