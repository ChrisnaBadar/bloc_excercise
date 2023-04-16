import 'package:flutter/material.dart';
import 'package:bloc_practice/blocs/bloc_exports.dart';

class YaumiSettings extends StatelessWidget {
  const YaumiSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, settingsState) {
          List<Function(bool)> yaumiSettingsEvents = [
            (val) => context.read<SettingsBloc>().add(TooggleFardhuEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleTahajudEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleRawatibEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleDhuhaEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleTilawahEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleShaumEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleSedekahEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleDzikirEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleTaklimEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleIstighfarEvent()),
            (val) => context.read<SettingsBloc>().add(TooggleShalawatEvent()),
          ];
          List<bool> yaumiSettingsStates = [
            settingsState.fardhu,
            settingsState.tahajud,
            settingsState.rawatib,
            settingsState.dhuha,
            settingsState.tilawah,
            settingsState.shaum,
            settingsState.sedekah,
            settingsState.dzikir,
            settingsState.taklim,
            settingsState.istighfar,
            settingsState.shalawat,
          ];
          List<String> yaumiSettingsTitles = [
            'Shalat Fardhu?',
            'Shalat Tahajud?',
            'Shalat Rawatib?',
            'Shalat Dhuha?',
            'Tilawah?',
            'Shaum?',
            'Sedekah?',
            'Dzikir?',
            'Taklim?',
            'Istighfar?',
            'Shalawat?'
          ];
          return Scaffold(
            appBar: AppBar(
              title: const Text('Settings'),
            ),
            body: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //absenSettings
                  Text(
                    'Absen Online',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Aktifkan fitur absen online?'),
                      Switch(value: false, onChanged: (val) {})
                    ],
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),

                  //YaumiSettings
                  Text(
                    'Yaumi',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        bool switchValue = yaumiSettingsStates[index];
                        Function(bool) onChanged = yaumiSettingsEvents[index];

                        return ListTile(
                          title: Text(yaumiSettingsTitles[index]),
                          trailing: Switch(
                            value: switchValue,
                            onChanged: onChanged,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
