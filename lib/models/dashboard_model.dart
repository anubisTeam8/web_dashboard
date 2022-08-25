import 'package:flutter/cupertino.dart';
import 'package:web_dashboard/models/patient_model.dart';

class DashboardModel {
  DashboardModel({
    this.status,
    this.errNum,
    this.msg,
    this.totalList,
    this.totalNot,
    this.allAccepted,
    this.allRejected,
    this.allNoAnswer,
    this.patients,
  }) {}

  final bool? status;
  final String? errNum;
  final String? msg;
  final num? totalList;
  final num? totalNot;
  final num? allAccepted;
  final num? allRejected;
  final num? allNoAnswer;
  List<PatientModel>? patients;
  DashboardModel copyWith({
    bool? status,
    String? errNum,
    String? msg,
    num? totalList,
    num? totalNot,
    num? allAccepted,
    num? allRejected,
    num? allNoAnswer,
    List<PatientModel>? patients,
  }) =>
      DashboardModel(
        status: status ?? this.status,
        errNum: errNum ?? this.errNum,
        msg: msg ?? this.msg,
        totalList: totalList ?? this.totalList,
        totalNot: totalNot ?? this.totalNot,
        allAccepted: allAccepted ?? this.allAccepted,
        allRejected: allRejected ?? this.allRejected,
        allNoAnswer: allNoAnswer ?? this.allNoAnswer,
        patients: patients ?? this.patients,
      );

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'errNum': errNum,
      'msg': msg,
      'totalList': totalList,
      'totalNot': totalNot,
      'allAccepted': allAccepted,
      'allRejected': allRejected,
      'allNoAnswer': allNoAnswer,
      'patients': patients,
    };
  }

  factory DashboardModel.fromMap(Map<String, dynamic> map) {
    List<PatientModel> patients = [];
    map['patients'].forEach((v) {
      patients.add(PatientModel.fromMap(v));
    });

    return DashboardModel(
      status: map['status'] as bool,
      errNum: map['errNum'] as String,
      msg: map['msg'] as String,
      totalList: map['total_list'] as num,
      totalNot: map['total_not'] as num,
      allAccepted: map['all_accepted'] as num,
      allRejected: map['all_rejected'] as num,
      allNoAnswer: map['all_no_answer'] as num,
      patients: patients,
    );
  }
}
