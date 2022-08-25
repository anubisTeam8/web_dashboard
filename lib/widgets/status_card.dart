import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.statNum,
    required this.title,
  }) : super(key: key);
  final num statNum;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 400.w,
        height: 270.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$title\n",
              style: TextStyle(
                  color: blue, fontWeight: FontWeight.bold, fontSize: 35.sp),
            ),
            Text(
              '$statNum',
              style: TextStyle(fontSize: 112.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
