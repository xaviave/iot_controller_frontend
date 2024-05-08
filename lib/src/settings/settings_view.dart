import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_controller/src/blocs/settings_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
        return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                DropdownButton<ThemeMode>(
                    value: state.theme,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Server Name',
                        hintText: 'Current server name: ${state.serverName}'),
                    onSubmitted: (value) {
                      context
                          .read<SettingsBloc>()
                          .add(ServerInfoChangedEvent(value, state.serverPort));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Server Port',
                        hintText: 'Current server name: ${state.serverPort}'),
                    onSubmitted: (value) {
                      context.read<SettingsBloc>().add(ServerInfoChangedEvent(
                          state.serverName, int.parse(value)));
                    },
                  ),
                ),
              ],
            ));
      }),
    );
  }
}
