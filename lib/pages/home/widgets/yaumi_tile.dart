import 'package:flutter/material.dart';

class YaumiTile extends StatelessWidget {
  const YaumiTile({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text('Judul Yaumi'),
        subtitle: const Text('Poin Yaumi'),
        trailing: Checkbox(value: false, onChanged: (val) {}));
  }
}
