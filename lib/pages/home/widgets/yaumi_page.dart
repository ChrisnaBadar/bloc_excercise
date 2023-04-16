// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bloc_practice/blocs/yaumi_bloc/yaumi_bloc.dart';
import 'package:bloc_practice/models/yaumi_model.dart';
import 'package:bloc_practice/pages/home/widgets/yaumi_list.dart';

import '../../../blocs/bloc_exports.dart';

class YaumiPage extends StatelessWidget {
  final SelectedDateState selectedDateState;
  final SettingsState settingsState;
  const YaumiPage({
    Key? key,
    required this.selectedDateState,
    required this.settingsState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YaumiBloc, YaumiState>(
      builder: (context, yaumiState) {
        List<YaumiModel> allYaumis = yaumiState.allYaumis;
        return Expanded(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                color: Colors.white),
            child: Column(
              children: [
                const SizedBox(
                  height: 32.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 3.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.list_alt),
                        label: const Text('Log')),
                    TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/yaumiSettings');
                        },
                        icon: const Icon(Icons.settings),
                        label: const Text('Settings'))
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Expanded(
                    child: YaumiList(
                  allYaumis: allYaumis,
                  yaumiState: yaumiState,
                  selectedDateState: selectedDateState,
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
