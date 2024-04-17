import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/category.dart';
import 'package:flutter_application_1/src/providers/category.dart';
import 'package:flutter_application_1/src/providers/led_mode.dart';
import 'package:flutter_application_1/src/providers/led_mode.dart';
import 'package:flutter_application_1/src/providers/product.dart';
import 'package:flutter_application_1/src/providers/product.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_application_1/src/settings/settings_controller.dart';
import 'package:flutter_application_1/src/settings/settings_view.dart';
import 'package:provider/provider.dart';

import '../providers/project.dart';
import 'project/project_list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<ProjectProvider>(
              create: (context) => ProjectProvider(),
            ),
            ChangeNotifierProvider<CategoryProvider>(
              create: (context) => CategoryProvider(),
            ),
            ChangeNotifierProvider<BaseProductProvider>(
              create: (context) => BaseProductProvider(),
            ),
            ChangeNotifierProvider<LedModeProvider>(
              create: (context) => LedModeProvider(),
            )
          ],
          child: Builder(builder: (BuildContext context) {
            return MaterialApp(
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
              themeMode: settingsController.themeMode,
              onGenerateRoute: (RouteSettings routeSettings) {
                return MaterialPageRoute<void>(
                  settings: routeSettings,
                  builder: (BuildContext context) {
                    switch (routeSettings.name) {
                      case SettingsView.routeName:
                        return SettingsView(controller: settingsController);
                      case ProjectListView.routeName:
                      default:
                        return const ProjectListView();
                    }
                  },
                );
              },
            );
          }),
        );
      },
    );
  }
}
