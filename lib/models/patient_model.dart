import 'package:flutter/foundation.dart';

class PatientModel {
  PatientModel({
    this.id,
    this.email,
    this.name,
    this.phone,
    this.noAnswer,
    this.accepted,
    this.rejected,
  });

  final num? id;
  final String? email;
  final String? name;
  final String? phone;
  final num? noAnswer;
  final num? accepted;
  final num? rejected;
  PatientModel copyWith({
    num? id,
    String? email,
    String? name,
    String? phone,
    num? noAnswer,
    num? accepted,
    num? rejected,
  }) =>
      PatientModel(
        id: id ?? this.id,
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        noAnswer: noAnswer ?? this.noAnswer,
        accepted: accepted ?? this.accepted,
        rejected: rejected ?? this.rejected,
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phone': phone,
      'noAnswer': noAnswer,
      'accepted': accepted,
      'rejected': rejected,
    };
  }

  factory PatientModel.fromMap(Map<String, dynamic> map) {
    return PatientModel(
      id: map['id'] as num,
      email: map['email'] as String,
      name: map['name'] as String,
      phone: map['phone'] as String,
      noAnswer: map['no_answer'] as num,
      accepted: map['accepted'] as num,
      rejected: map['rejected'] as num,
    );
  }
}
