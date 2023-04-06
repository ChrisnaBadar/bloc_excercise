import 'package:flutter/material.dart';

class Userbar extends StatelessWidget {
  final String? namaPengguna;
  final String? infoPengguna;
  const Userbar({super.key, this.namaPengguna, this.infoPengguna});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(),
        title: Text(
          '$namaPengguna',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
        ),
        subtitle: Text(
          '$infoPengguna',
          style: TextStyle(
              fontWeight: FontWeight.normal, color: Colors.blueGrey[400]),
        ),
        trailing: const Icon(Icons.more_vert_sharp),
      ),
    );
  }
}
