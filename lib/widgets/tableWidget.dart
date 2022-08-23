import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dashboard/colors.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 1225.w,
      height: 1175.h,
      child: Card(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Latest Patient Data", style: TextStyle(fontSize: 30.sp, color: grey, fontWeight: FontWeight.bold),),
                SizedBox(width: 700.w,),
                Card(
                  child: Row(
                    children: [
                      Icon(Icons.filter_list_outlined, color: grey, size: 45.sp,),
                      Text(" Filters ", style: TextStyle(color: grey, fontSize: 30.sp),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 1065.h, width: 1060.w,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingTextStyle: TextStyle(color: grey, fontWeight: FontWeight.bold, fontSize: 30.sp),
                    dataTextStyle: TextStyle(color: grey, fontWeight: FontWeight.bold, fontSize: 30.sp),
                    border: TableBorder.symmetric(inside: BorderSide.none),
                    columns: const [
                      DataColumn(label: Text("NO.")),
                      DataColumn(label: Text("Date in")),
                      DataColumn(label: Text("Name")),
                      DataColumn(label: Text("Age")),
                      DataColumn(label: Text("Gender")),
                      DataColumn(label: Text("Last Visit")),
                      DataColumn(label: Text("Setting")),
                    ],
                    rows: List.generate(20, (index) => DataRow(cells: [
                      const DataCell(Text("01")),
                      const DataCell(Text("22/2/2222")),
                      const DataCell(Text("Ali Mohamed")),
                      const DataCell(Text("24")),
                      const DataCell(Text("Male")),
                      const DataCell(Text("33/3/3333")),
                      DataCell(Row(children: [
                        Container(padding: EdgeInsets.all(8.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25), color: Colors.red,
                          ),
                          child: Icon(Icons.close, color: Colors.white, size: 30.sp,),
                        ),
                        SizedBox(width: 5.w,),
                        Container(padding: EdgeInsets.all(8.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25), color: Colors.green,
                          ),
                          child: Icon(Icons.check, color: Colors.white, size: 30.sp,),
                        ),
                      ],)),
                    ])),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
