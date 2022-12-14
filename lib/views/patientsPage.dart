import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dashboard/colors.dart';
import 'package:web_dashboard/widgets/calendarWidget.dart';
import 'package:web_dashboard/widgets/doctorsWidget.dart';
import 'package:web_dashboard/widgets/pieWidget.dart';
import 'package:web_dashboard/widgets/tableWidget.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 1570.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Medical Idea", style: TextStyle(fontSize: 40.sp, color: blue, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        SizedBox(height: 80.h, width: 450.w, child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            contentPadding: EdgeInsets.symmetric(horizontal: 30.w),
                            fillColor: Colors.white, filled: true,
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.sp),
                            )
                          ),
                        )),
                        SizedBox(width: 100.w,),
                        const CircleAvatar(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  const TableWidget(),
                  Column(
                    children: const [
                      CalenderWidget(),
                      DoctorsWidget(),
                      PieWidget(),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
