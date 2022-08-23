import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/views/patientsPage.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1455),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => const GetMaterialApp(
          home: PatientsPage(),
        )
    );
  }
}
