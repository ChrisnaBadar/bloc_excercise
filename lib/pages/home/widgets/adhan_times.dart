// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../blocs/bloc_exports.dart';

class AdhanTimes extends StatelessWidget {
  final String? shalatTitle;
  final String? shalatTimes;
  final String? nextShalatTimes;
  const AdhanTimes({
    Key? key,
    this.shalatTitle,
    this.shalatTimes,
    this.nextShalatTimes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$shalatTitle',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                  Text(
                    '$shalatTimes',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                  Text(
                    '$nextShalatTimes Hingga Waktu Ashar',
                    style: const TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.blueGrey),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Aktifkan Pengingat',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                  ),
                  Text(
                    'Waktu Shalat?',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700]),
                  ),
                  Switch(
                      value: state.shalatReminder,
                      onChanged: (val) {
                        context
                            .read<SettingsBloc>()
                            .add(TooggleShalatReminderEvent());
                      })
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
