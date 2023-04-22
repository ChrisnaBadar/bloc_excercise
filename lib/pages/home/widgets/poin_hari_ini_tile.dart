// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bloc_practice/blocs/bloc_exports.dart';
import 'package:bloc_practice/models/yaumi_model.dart';

class PoinHariIniTile extends StatelessWidget {
  final SettingsState settingsState;
  final YaumiModel todayYaumi;
  const PoinHariIniTile({
    Key? key,
    required this.settingsState,
    required this.todayYaumi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    var myPoin = (todayYaumi.poinHariIni! / activatedYaumi) * 100;
    return Text('Pencapaian Yaumi: ${myPoin.roundToDouble()}%');
  }
}
