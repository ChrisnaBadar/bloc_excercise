// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bloc_practice/blocs/bloc_exports.dart';
import 'package:bloc_practice/blocs/yaumi_bloc/yaumi_bloc.dart';
import 'package:bloc_practice/pages/home/widgets/yaumi_tile.dart';

import '../../../models/yaumi_model.dart';

class YaumiList extends StatelessWidget {
  final List<YaumiModel> allYaumis;
  final YaumiState yaumiState;
  final SelectedDateState selectedDateState;
  const YaumiList({
    Key? key,
    required this.allYaumis,
    required this.yaumiState,
    required this.selectedDateState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todayYaumi = allYaumis
        .where((e) => e.date == selectedDateState.selectedDate)
        .toList();

    if (todayYaumi.isEmpty) {
      context.read<YaumiBloc>().add(AddYaumiEvent(
              yaumi: YaumiModel(
            id: selectedDateState.selectedDate.toString(),
            date: selectedDateState.selectedDate,
          )));
      return Container();
    } else {
      return SingleChildScrollView(
        child: YaumiTile(
          todayYaumi: todayYaumi[0],
          yaumiState: yaumiState,
          selectedDateState: selectedDateState,
        ),
      );
    }
  }
}
