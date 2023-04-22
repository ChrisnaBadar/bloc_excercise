import 'package:bloc_practice/models/yaumi_model.dart';
import 'package:bloc_practice/pages/home/widgets/poin_hari_ini_tile.dart';
import 'package:bloc_practice/pages/home/widgets/tilawah_tile.dart';
import 'package:flutter/material.dart';
import '../../../blocs/bloc_exports.dart';

class YaumiList extends StatelessWidget {
  const YaumiList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        return BlocBuilder<SelectedDateBloc, SelectedDateState>(
          builder: (context, selectedDateState) {
            final selectedDate = selectedDateState.selectedDate;
            return BlocBuilder<YaumiBloc, YaumiState>(
              builder: (context, yaumiState) {
                final yaumi = yaumiState.allYaumis;
                var selectedYaumi =
                    yaumi.where((e) => e.date == selectedDate).toList();
                if (selectedYaumi.isEmpty) {
                  context.read<YaumiBloc>().add(AddYaumiEvent(
                      yaumi: YaumiModel(
                          id: selectedDate.toString(), date: selectedDate)));
                  return Container();
                } else {
                  var todayYaumi = selectedYaumi.first;
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        settingsState.fardhu
                            ? ListTile(
                                title: const Text('Shalat Shubuh'),
                                subtitle: const Text('Sub Title Shalat Fardhu'),
                                trailing: Checkbox(
                                    value: todayYaumi.shubuh,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateShubuhEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () => context.read<YaumiBloc>().add(
                                    UpdateShubuhEvent(
                                        yaumi: todayYaumi, poinHariIni: 1.0)),
                              )
                            : Container(),
                        settingsState.fardhu
                            ? ListTile(
                                title: const Text('Shalat Dhuhur'),
                                subtitle: const Text('Sub Title Shalat Dhuhur'),
                                trailing: Checkbox(
                                    value: todayYaumi.dhuhur,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateDhuhurEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateDhuhurEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.fardhu
                            ? ListTile(
                                title: const Text('Shalat Ashar'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.ashar,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateAsharEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateAsharEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.fardhu
                            ? ListTile(
                                title: const Text('Shalat Maghrib'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.maghrib,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateMaghribEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateMaghribEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.fardhu
                            ? ListTile(
                                title: const Text('Shalat Isya'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.isya,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateIsyaEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(UpdateIsyaEvent(
                                      yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.tahajud
                            ? ListTile(
                                title: const Text('Shalat Tahajud'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.tahajud,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateTahajudEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateTahajudEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.rawatib
                            ? ListTile(
                                title: const Text('Shalat Rawatib'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.rawatib,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateRawatibEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateRawatibEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.dhuha
                            ? ListTile(
                                title: const Text('Shalat Dhuha'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.dhuha,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateDhuhaEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateDhuhaEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.tilawah
                            ? TilawahTile(
                                todayYaumi: todayYaumi,
                                selectedDateState: selectedDateState,
                                yaumiState: yaumiState,
                              )
                            : Container(),
                        settingsState.shaum
                            ? ListTile(
                                title: const Text('Shaum Sunnah'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.shaum,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateShaumEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateShaumEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.sedekah
                            ? ListTile(
                                title: const Text('Sedekah Harian'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.sedekah,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateSedekahEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateSedekahEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.dzikir
                            ? ListTile(
                                title: const Text('Dzikir Pagi'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.dzikirPagi,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateDzikirPagiEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateDzikirPagiEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.dzikir
                            ? ListTile(
                                title: const Text('Dzikir Petang'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.dzikirPetang,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateDzikirPetangEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateDzikirPetangEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.taklim
                            ? ListTile(
                                title: const Text('Taklim'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.taklim,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateTaklimEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateTaklimEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.istighfar
                            ? ListTile(
                                title: const Text('Istighfar'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.istighfar,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateIstighfarEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateIstighfarEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        settingsState.shalawat
                            ? ListTile(
                                title: const Text('Shalawat'),
                                subtitle: const Text('Poin Yaumi'),
                                trailing: Checkbox(
                                    value: todayYaumi.shalawat,
                                    onChanged: (val) {
                                      context.read<YaumiBloc>().add(
                                          UpdateShalawatEvent(
                                              yaumi: todayYaumi,
                                              poinHariIni: 1.0));
                                    }),
                                onTap: () {
                                  context.read<YaumiBloc>().add(
                                      UpdateShalawatEvent(
                                          yaumi: todayYaumi, poinHariIni: 1.0));
                                },
                              )
                            : Container(),
                        PoinHariIniTile(
                          settingsState: settingsState,
                          todayYaumi: todayYaumi,
                        ),
                        [
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
                          settingsState.shalawat
                        ].contains(true)
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    onPressed: () async {
                                      Future.delayed(
                                          Duration.zero,
                                          () => showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    _alertDialog(
                                                        context,
                                                        todayYaumi,
                                                        selectedDateState,
                                                        settingsState),
                                              ));
                                    },
                                    child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: const Text(
                                          'SUBMIT',
                                          textAlign: TextAlign.center,
                                        ))),
                              )
                            : Container()
                      ],
                    ),
                  );
                }
              },
            );
          },
        );
      },
    );
  }

  _alertDialog(BuildContext context, YaumiModel todayYaumi,
      SelectedDateState selectedDateState, SettingsState settingsState) {
    final activatedYaumi = [
      settingsState.fardhu,
      settingsState.fardhu,
      settingsState.fardhu,
      settingsState.fardhu,
      settingsState.fardhu,
      settingsState.tahajud,
      settingsState.rawatib,
      settingsState.dhuha,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.tilawah,
      settingsState.shaum,
      settingsState.sedekah,
      settingsState.dzikir,
      settingsState.dzikir,
      settingsState.taklim,
      settingsState.istighfar,
      settingsState.shalawat
    ].where((e) => e == true).length;
    final poin = (todayYaumi.poinHariIni! / activatedYaumi) * 100;
    return AlertDialog(
      content: Text.rich(TextSpan(children: [
        const TextSpan(text: 'Submit data Yaumi tanggal '),
        TextSpan(
            text: '${selectedDateState.selectedDate} ',
            style: const TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'dengan nilai poin: ${poin.roundToDouble()}%?')
      ])),
      actions: [
        TextButton(onPressed: () {}, child: Text('Yes')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'))
      ],
    );
  }
}
