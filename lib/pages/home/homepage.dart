import 'package:bloc_practice/blocs/yaumi_bloc/yaumi_bloc.dart';
import 'package:bloc_practice/pages/home/widgets/adhan_times.dart';
import 'package:bloc_practice/pages/home/widgets/date_location_header.dart';
import 'package:bloc_practice/pages/home/widgets/my_date_picker.dart';
import 'package:bloc_practice/pages/home/widgets/user_bar.dart';
import 'package:bloc_practice/pages/home/widgets/yaumi_page.dart';
import 'package:flutter/material.dart';

import '../../blocs/bloc_exports.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectedDateBloc(),
      child: BlocBuilder<SelectedDateBloc, SelectedDateState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            backgroundColor: Colors.orange[50],
            body: SafeArea(
              child: Column(
                children: [
                  //date, location
                  const DateLocationHeader(
                    hari: 'Senin',
                    tanggal: '01 Januari 2023',
                    wilayah: 'Gegerkalong',
                    kota: 'Bandung',
                  ),

                  //userbar
                  const Userbar(
                    namaPengguna: 'Nama Pengguna',
                    infoPengguna: 'Info Pengguna',
                  ),

                  //adhan
                  const AdhanTimes(
                    shalatTitle: 'Shalat Dhuhur',
                    shalatTimes: '12:05',
                    nextShalatTimes: '00:03:00',
                  ),

                  //datepicker
                  MyDatePicker(
                    selectedDateState: state,
                  ),

                  //yaumi
                  BlocProvider(
                    create: (context) => YaumiBloc(),
                    child: const YaumiPage(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
