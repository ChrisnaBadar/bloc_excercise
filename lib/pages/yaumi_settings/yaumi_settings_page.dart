import 'package:bloc_practice/blocs/bloc_exports.dart';
import 'package:bloc_practice/models/active_yaumi.dart';
import 'package:flutter/material.dart';

class YaumiSettings extends StatelessWidget {
  const YaumiSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YaumiBloc(),
      child: BlocListener<YaumiBloc, YaumiState>(
        listener: (context, state) {
          if (state.fardhu) {
          } else {}
        },
        child: BlocBuilder<YaumiBloc, YaumiState>(
          builder: (context, state) {
            final fardhu = state.fardhu;
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
                        Switch(
                            value: fardhu,
                            onChanged: (val) {
                              context
                                  .read<YaumiBloc>()
                                  .add(ToogleFardhuEvent());
                              fardhu
                                  ? ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                      content: Text('FALSE'),
                                      duration: Duration(milliseconds: 300),
                                    ))
                                  : ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                      content: Text('TRUE'),
                                      duration: Duration(milliseconds: 300),
                                    ));
                            })
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
