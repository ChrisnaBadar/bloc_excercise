// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bloc_practice/blocs/bloc_exports.dart';
import 'package:bloc_practice/blocs/yaumi_bloc/yaumi_bloc.dart';

import '../../../models/yaumi_model.dart';

class YaumiTile extends StatefulWidget {
  final YaumiModel todayYaumi;
  final YaumiState yaumiState;
  final SelectedDateState selectedDateState;
  const YaumiTile({
    Key? key,
    required this.todayYaumi,
    required this.yaumiState,
    required this.selectedDateState,
  }) : super(key: key);

  @override
  State<YaumiTile> createState() => _YaumiTileState();
}

class _YaumiTileState extends State<YaumiTile> {
  @override
  Widget build(BuildContext context) {
    final selectedDate = widget.selectedDateState.selectedDate;
    final yaumi = widget.yaumiState.allYaumis
        .where((e) => e.date == selectedDate)
        .toList();
    return Column(
      children: [
        ListTile(
            title: const Text('Shalat Shubuh'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.shubuh,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateShubuhEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Dhuhur'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.dhuhur,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateDhuhurEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Ashar'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.ashar,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateAsharEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Maghrib'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.maghrib,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateMaghribEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Isya'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.isya,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateIsyaEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Tahajud'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.tahajud,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateTahajudEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Rawatib'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.rawatib,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateRawatibEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalat Dhuha'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.dhuha,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateDhuhaEvent(yaumi: yaumi.first));
                })),
        ListTile(
          title: const Text('Tilawah Qur\'an'),
          subtitle: const Text('Per Halaman'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      context
                          .read<YaumiBloc>()
                          .add(UpdateDecrementTilawahEvent(yaumi: yaumi.first));
                    });
                  },
                  icon: CircleAvatar(child: Icon(Icons.remove))),
              Text('${yaumi.first.tilawah}'),
              IconButton(
                  onPressed: () {
                    setState(() {
                      context
                          .read<YaumiBloc>()
                          .add(UpdateIncrementTilawahEvent(yaumi: yaumi.first));
                    });
                  },
                  icon: CircleAvatar(child: Icon(Icons.add))),
            ],
          ),
        ),
        ListTile(
            title: const Text('Shaum Sunnah'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.shaum,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateShaumEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Sedekah Harian'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.sedekah,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateSedekahEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Dzikir Pagi'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.dzikirPagi,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateDzikirPagiEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Dzikir Petang'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.dzikirPetang,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateDzikirPetangEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Taklim'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.taklim,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateTaklimEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Istighfar'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.istighfar,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateIstighfarEvent(yaumi: yaumi.first));
                })),
        ListTile(
            title: const Text('Shalawat'),
            subtitle: const Text('Poin Yaumi'),
            trailing: Checkbox(
                value: yaumi.first.shalawat,
                onChanged: (val) {
                  context
                      .read<YaumiBloc>()
                      .add(UpdateShalawatEvent(yaumi: yaumi.first));
                })),
      ],
    );
  }
}
