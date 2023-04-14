// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import 'package:bloc_practice/blocs/bloc_exports.dart';

class MyDatePicker extends StatelessWidget {
  final SelectedDateState selectedDateState;
  const MyDatePicker({
    Key? key,
    required this.selectedDateState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DatePicker(
        DateTime.now().subtract(const Duration(days: 5)),
        initialSelectedDate: selectedDateState.selectedDate,
        selectionColor: const Color.fromARGB(255, 14, 76, 170),
        selectedTextColor: Colors.white,
        onDateChange: (date) {
          context.read<SelectedDateBloc>().add(SelectedDateChangedEvents(date));
        },
        locale: "id_ID",
        daysCount: 8,
        inactiveDates: List.generate(
            2, (index) => DateTime.now().add(Duration(days: index + 1))),
      ),
    );
  }
}
