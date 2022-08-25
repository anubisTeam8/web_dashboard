import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_dashboard/colors.dart';
import 'package:web_dashboard/models/patient_model.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({Key? key, required this.patientModel}) : super(key: key);
  final List<PatientModel> patientModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 1225.w,
      height: 1175.h,
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Patient Data",
                  style: TextStyle(
                      fontSize: 30.sp,
                      color: grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 700.w,
                ),
                Card(
                  child: Row(
                    children: [
                      Icon(
                        Icons.filter_list_outlined,
                        color: grey,
                        size: 45.sp,
                      ),
                      Text(
                        " Filters ",
                        style: TextStyle(color: grey, fontSize: 30.sp),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1065.h,
              width: 1060.w,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingTextStyle: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp),
                    dataTextStyle: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp),
                    border: TableBorder.symmetric(inside: BorderSide.none),
                    columns: const [
                      DataColumn(label: Text("ID")),
                      DataColumn(label: Text("Email")),
                      DataColumn(label: Text("Name")),
                      DataColumn(label: Text("Phone")),
                      DataColumn(label: Text("No Answer")),
                      DataColumn(label: Text("Accepted")),
                      DataColumn(label: Text("Rejected")),
                    ],
                    rows: List.generate(patientModel.length, (index) {
                      final PatientModel patient = patientModel[index];
                      return DataRow(cells: [
                        DataCell(SelectableText("${patient.id}")),
                        DataCell(SelectableText('${patient.email}')),
                        DataCell(SelectableText("${patient.name}")),
                        DataCell(SelectableText("${patient.phone}")),
                        DataCell(SelectableText("${patient.noAnswer}")),
                        DataCell(SelectableText("${patient.accepted}")),
                        DataCell(SelectableText("${patient.rejected}")),
                      ]);
                    }),
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
