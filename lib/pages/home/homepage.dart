import 'package:bloc_practice/pages/home/widgets/adhan_times.dart';
import 'package:bloc_practice/pages/home/widgets/date_location_header.dart';
import 'package:bloc_practice/pages/home/widgets/my_date_picker.dart';
import 'package:bloc_practice/pages/home/widgets/user_bar.dart';
import 'package:bloc_practice/pages/home/widgets/yaumi_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Column(
          children: const [
            //date, location
            DateLocationHeader(
              hari: 'Senin',
              tanggal: '01 Januari 2023',
              wilayah: 'Gegerkalong',
              kota: 'Bandung',
            ),

            //userbar
            Userbar(
              namaPengguna: 'Nama Pengguna',
              infoPengguna: 'Info Pengguna',
            ),

            //adhan
            AdhanTimes(
              shalatTitle: 'Shalat Dhuhur',
              shalatTimes: '12:05',
              nextShalatTimes: '00:03:00',
            ),

            //datepicker
            MyDatePicker(),

            //yaumi
            YaumiPage()
          ],
        ),
      ),
    );
  }
}
