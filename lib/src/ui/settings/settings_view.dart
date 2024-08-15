import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:iot_controller/src/blocs/settings_bloc.dart";
import "package:iot_controller/src/blocs/user.dart";
import "package:iot_controller/src/ui/customColors.dart";
import "package:iot_controller/src/ui/user/login_view.dart";
import "package:iot_controller/src/ui/utils/popup/login_popup.dart";

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = "settings";

  Widget decorationWidget(BuildContext context, Widget bodyView) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return Container(
        decoration: BoxDecoration(
            color: customColors.lightBackground,
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Padding(padding: const EdgeInsets.all(16), child: bodyView));
  }

  Widget themeBloc(BuildContext context, SettingsState settingState) {
    return decorationWidget(
        context,
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text("Theme selection",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ))),
          Divider(color: Theme.of(context).colorScheme.secondary),
          const SizedBox(height: 20),
          SegmentedButton<ThemeMode>(
            segments: const <ButtonSegment<ThemeMode>>[
              ButtonSegment<ThemeMode>(
                  value: ThemeMode.system,
                  label: Text("System Theme"),
                  icon: Icon(Icons.auto_mode_outlined)),
              ButtonSegment<ThemeMode>(
                value: ThemeMode.light,
                label: Text("Light Theme"),
                icon: Icon(Icons.light_mode_outlined),
              ),
              ButtonSegment<ThemeMode>(
                value: ThemeMode.dark,
                label: Text("Dark Theme"),
                icon: Icon(Icons.dark_mode_outlined),
              ),
            ],
            selected: <ThemeMode>{settingState.theme},
            onSelectionChanged: (Set<ThemeMode> value) {
              context.read<SettingsBloc>().add(ThemeChangedEvent(value.first));
            },
          )
        ]));
  }

  Widget userBloc(BuildContext context, UserState userState) {
    List<Widget> w = <Widget>[
      const Align(
          alignment: Alignment.topLeft,
          child: Text("Account",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
              ))),
      Divider(color: Theme.of(context).colorScheme.secondary),
      const SizedBox(height: 20),
    ];

    if (userState is AddActiveUserEventSuccess) {
      w = [
        ...w,
        Text("active user: ${userState.activeUser}",
            style: const TextStyle(
              fontSize: 24,
            )),
        const SizedBox(height: 20),
        // need a remove active user button
        // Button()
      ];
    } else {
      if (userState is AddActiveUserEventError) {
        w.add(Text("Error: ${userState.message}"));
      } else {
        w.add(const Text("No user connected"));
      }
      w = [
        ...w,
        const SizedBox(height: 20),
        LoginPopup(
          heroTag: "login_user_create_button",
          formName: "user",
          form: const UserLoginForm(),
          onPressedCallBack: (_) {},
        )
      ];
    }

    return decorationWidget(context,
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: w));
  }

  Widget serverBloc(BuildContext context, SettingsState settingState) {
    return decorationWidget(
        context,
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text("Server settings",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ))),
          Divider(color: Theme.of(context).colorScheme.secondary),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "Server Name",
                hintText: "Current server name: ${settingState.serverName}"),
            onSubmitted: (value) {
              context
                  .read<SettingsBloc>()
                  .add(ServerInfoChangedEvent(value, settingState.serverPort));
            },
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "Server Port",
                hintText: "Current server name: ${settingState.serverPort}"),
            onSubmitted: (value) {
              context.read<SettingsBloc>().add(ServerInfoChangedEvent(
                  settingState.serverName, int.parse(value)));
            },
          ),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings",
            style: TextStyle(
              fontSize: 36,
            )),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, settingState) {
        return BlocBuilder<UserGRPCBloc, UserState>(
            builder: (context, userState) {
          return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                themeBloc(context, settingState),
                const SizedBox(height: 20),
                userBloc(context, userState),
                const SizedBox(height: 20),
                serverBloc(context, settingState),
              ]));
        });
      }),
    );
  }
}
