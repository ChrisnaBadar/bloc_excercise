import 'package:flutter/material.dart';

class YaumiTile extends StatelessWidget {
  const YaumiTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Judul Yaumi'),
      subtitle: Text('Poin Yaumi'),
      trailing: Icon(
        Icons.check_box,
        color: Colors.green,
      ),
    );
  }
}
