import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dashboard/colors.dart';

class DoctorsWidget extends StatelessWidget {
  const DoctorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 400.w,
        height: 340.h,
        child: Column(
          children: [
            Text("\nToday Doctors", style: TextStyle(color: blue, fontWeight: FontWeight.bold, fontSize: 25.sp),),
            GridView.count(childAspectRatio: 1.1,
              crossAxisCount: 4, shrinkWrap: true, padding: EdgeInsets.only(top: 10.sp),
              children: List.generate(8, (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.center ,
                children: [
                  const CircleAvatar(),
                  Text(" Dr. Abd El Rahman", style: TextStyle(fontSize: 15.sp, color: grey),)
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
