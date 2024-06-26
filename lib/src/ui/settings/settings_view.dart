import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';
import 'package:iot_controller/src/blocs/user.dart';
import 'package:iot_controller/src/ui/user/login_view.dart';
import 'package:iot_controller/src/ui/utils/popup/login_popup.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, settingState) {
        return BlocBuilder<UserGRPCBloc, UserState>(
            builder: (context, userState) {
          return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DropdownButton<ThemeMode>(
                      value: settingState.theme,
                      onChanged: (value) {
                        context
                            .read<SettingsBloc>()
                            .add(ThemeChangedEvent(value!));
                      },
                      items: const [
                        DropdownMenuItem(
                          value: ThemeMode.system,
                          child: Text('System Theme'),
                        ),
                        DropdownMenuItem(
                          value: ThemeMode.light,
                          child: Text('Light Theme'),
                        ),
                        DropdownMenuItem(
                          value: ThemeMode.dark,
                          child: Text('Dark Theme'),
                        )
                      ]),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Server Name',
                          hintText:
                              'Current server name: ${settingState.serverName}'),
                      onSubmitted: (value) {
                        context.read<SettingsBloc>().add(ServerInfoChangedEvent(
                            value, settingState.serverPort));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Server Port',
                          hintText:
                              'Current server name: ${settingState.serverPort}'),
                      onSubmitted: (value) {
                        context.read<SettingsBloc>().add(ServerInfoChangedEvent(
                            settingState.serverName, int.parse(value)));
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(child: () {
                    if (userState is AddActiveUserEventError) {
                      return Text("Error: ${userState.message}");
                    } else if (userState is AddActiveUserEventSuccess) {
                      return Text("Active user: ${userState.activeUser}");
                    } else {
                      return const Text("No user connected");
                    }
                  }()),
                  const SizedBox(height: 10),
                  LoginPopup(
                    heroTag: "login_user_create_button",
                    formName: "user",
                    form: const UserLoginForm(),
                    onPressedCallBack: (_) {},
                  ),
                ],
              ));
        });
      }),
    );
  }
}
