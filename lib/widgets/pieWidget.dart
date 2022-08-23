import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class PieWidget extends StatelessWidget {
  const PieWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 450.h, width: 400.w,
        child: Column(
          children: [
            Text("\nPatient Visit by Gender", style: TextStyle(color: blue, fontWeight: FontWeight.bold, fontSize: 25.sp),),
            SizedBox(
              width: 400.w, height: 325.h,
              child: PieChart(
                  PieChartData(
                  centerSpaceRadius: 60.sp,
                  borderData: FlBorderData(show: false),
                  sections: [
                    PieChartSectionData(value: 70, color: blue, radius: 80.sp, showTitle: false),
                    PieChartSectionData(value: 30, color: Colors.teal[200], radius: 80.sp, showTitle: false)
                  ]
              )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(width: 25.w, height: 25.w, color: blue,),
                    Text( " Male", style: TextStyle(color: grey, fontWeight: FontWeight.bold, fontSize: 20.sp),)
                  ],
                ),
                Row(
                  children: [
                    Container(width: 25.w, height: 25.w, color: Colors.teal[200],),
                    Text( " Female", style: TextStyle(color: grey, fontWeight: FontWeight.bold, fontSize: 20.sp),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
