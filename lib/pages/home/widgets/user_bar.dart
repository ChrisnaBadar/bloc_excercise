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
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Edit Nama'),
                onTap: () => Future.delayed(
                    Duration.zero,
                    () => showModalBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                              height: 190.0,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'Edit Nama',
                                    style: TextStyle(
                                        fontSize: 17.5,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey[600]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)))),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                        onPressed: () {}, child: Text('SAVE')),
                                  )
                                ],
                              ),
                            ))),
              ),
              PopupMenuItem(
                child: const Text('Logout'),
                onTap: () => Future.delayed(
                    Duration.zero,
                    () => showDialog(
                          context: context,
                          builder: (context) => _logoutAlert(context),
                        )),
              ),
            ],
          )),
    );
  }

  AlertDialog _logoutAlert(context) {
    return AlertDialog(
      content: const Text('Anda ingin logout?'),
      actions: [
        TextButton(onPressed: () {}, child: const Text('Yes')),
        TextButton(
            onPressed: () => Navigator.pop(context), child: const Text('No')),
      ],
    );
  }
}
