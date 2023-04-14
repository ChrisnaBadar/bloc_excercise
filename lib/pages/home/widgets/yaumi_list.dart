// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bloc_practice/blocs/bloc_exports.dart';
import 'package:bloc_practice/blocs/yaumi_bloc/yaumi_bloc.dart';
import 'package:bloc_practice/pages/home/widgets/yaumi_tile.dart';

import '../../../models/yaumi_model.dart';

class YaumiList extends StatelessWidget {
  final List<YaumiModel> allYaumis;
  final YaumiState state;
  const YaumiList({
    Key? key,
    required this.allYaumis,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todayYaumi = allYaumis
        .where((e) =>
            e.date ==
            DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day))
        .toList();

    if (todayYaumi.isEmpty) {
      context.read<YaumiBloc>().add(AddYaumiEvent(
              yaumi: YaumiModel(
            id: DateTime(DateTime.now().year, DateTime.now().month,
                    DateTime.now().day)
                .toString(),
            date: DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day),
          )));
      return Container();
    } else {
      return ListView.builder(
          itemCount: todayYaumi.length,
          itemBuilder: (context, index) => YaumiTile(
                todayYaumi: todayYaumi[index],
              ));
    }
  }
}
