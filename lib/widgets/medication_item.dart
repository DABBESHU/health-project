import 'package:flutter/material.dart';
import '../core/constants.dart';

class MedicationItem extends StatelessWidget {
  final String date;
  final String medication;
  final String doctor;

  MedicationItem(
      {required this.date, required this.medication, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: AppDimensions.defaultPadding / 2),
      child: ListTile(
        title: Text(medication, style: AppTextStyles.bodyTextStyle),
        subtitle: Text('Date: $date\nPrescribed by: $doctor',
            style: AppTextStyles.bodyTextStyle),
      ),
    );
  }
}
