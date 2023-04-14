// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../models/yaumi_model.dart';

class YaumiTile extends StatelessWidget {
  final YaumiModel todayYaumi;
  const YaumiTile({
    Key? key,
    required this.todayYaumi,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text('Judul Yaumi'),
        subtitle: const Text('Poin Yaumi'),
        trailing: Checkbox(value: false, onChanged: (val) {}));
  }
}
