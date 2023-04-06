import 'package:flutter/material.dart';

class YaumiSettings extends StatelessWidget {
  const YaumiSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //absenSettings
            Text(
              'Absen Online',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[700]),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Aktifkan fitur absen online?'),
                Switch(value: false, onChanged: (val) {})
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),

            //YaumiSettings
            Text(
              'Yaumi',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[700]),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Shalat Fardhu?'),
                Switch(value: false, onChanged: (val) {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
