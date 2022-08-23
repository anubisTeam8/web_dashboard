import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 400.w,
        height: 335.h,
        child: CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(2022, 1, 01),
            lastDate: DateTime(2022, 12, 31),
            onDateChanged: (DateTime x) {}),
      ),
    );
  }
}
