import 'package:bloc_practice/models/active_yaumi.dart';
import 'package:flutter/material.dart';
import 'package:bloc_practice/blocs/bloc_exports.dart';

import '../../blocs/bloc/settings_bloc.dart';

class YaumiSettings extends StatelessWidget {
  const YaumiSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(),
      child: BlocConsumer<SettingsBloc, SettingsState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                        bool switchValue = index == 0
                            ? state.fardhu
                            : index == 1
                                ? state.tahajud
                                : index == 2
                                    ? state.rawatib
                                    : index == 3
                                        ? state.dhuha
                                        : index == 4
                                            ? state.tilawah
                                            : index == 5
                                                ? state.shaum
                                                : index == 6
                                                    ? state.sedekah
                                                    : index == 7
                                                        ? state.dzikir
                                                        : index == 8
                                                            ? state.taklim
                                                            : index == 9
                                                                ? state
                                                                    .istighfar
                                                                : state
                                                                    .shalawat;
                        Function(bool) onChanged = index == 0
                            ? (val) => context
                                .read<SettingsBloc>()
                                .add(TooggleFardhuEvent())
                            : index == 1
                                ? (val) => context
                                    .read<SettingsBloc>()
                                    .add(TooggleTahajudEvent())
                                : index == 2
                                    ? (val) => context
                                        .read<SettingsBloc>()
                                        .add(TooggleRawatibEvent())
                                    : index == 3
                                        ? (val) => context
                                            .read<SettingsBloc>()
                                            .add(TooggleDhuhaEvent())
                                        : index == 4
                                            ? (val) => context
                                                .read<SettingsBloc>()
                                                .add(TooggleTilawahEvent())
                                            : index == 5
                                                ? (val) => context
                                                    .read<SettingsBloc>()
                                                    .add(TooggleShaumEvent())
                                                : index == 6
                                                    ? (val) => context
                                                        .read<SettingsBloc>()
                                                        .add(
                                                            TooggleSedekahEvent())
                                                    : index == 7
                                                        ? (val) => context.read<SettingsBloc>().add(
                                                            TooggleDzikirEvent())
                                                        : index == 8
                                                            ? (val) => context
                                                                .read<
                                                                    SettingsBloc>()
                                                                .add(
                                                                    TooggleTaklimEvent())
                                                            : index == 9
                                                                ? (val) => context
                                                                    .read<SettingsBloc>()
                                                                    .add(TooggleIstighfarEvent())
                                                                : (val) => context.read<SettingsBloc>().add(TooggleShalawatEvent());

                        return ListTile(
                          title: Text(
                            index == 0
                                ? 'Shalat Fardhu?'
                                : index == 1
                                    ? 'Shalat Tahajud?'
                                    : index == 2
                                        ? 'Shalat Rawatib?'
                                        : index == 3
                                            ? 'Shalat Dhuha?'
                                            : index == 4
                                                ? 'Tilawah?'
                                                : index == 5
                                                    ? 'Shaum?'
                                                    : index == 6
                                                        ? 'Sedekah?'
                                                        : index == 7
                                                            ? 'Dzikir?'
                                                            : index == 8
                                                                ? 'Taklim?'
                                                                : index == 9
                                                                    ? 'Istighfar?'
                                                                    : 'Shalawat',
                          ),
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
