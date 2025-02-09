import 'package:flutter/material.dart';
import '../core/constants.dart';

class NurseVisitItem extends StatelessWidget {
  final String date;
  final String description;
  final String nurse;

  NurseVisitItem(
      {required this.date, required this.description, required this.nurse});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: AppDimensions.defaultPadding / 2),
      child: ListTile(
        title: Text(description, style: AppTextStyles.bodyTextStyle),
        subtitle: Text('Date: $date\nPrescribed by: $nurse',
            style: AppTextStyles.bodyTextStyle),
      ),
    );
  }
}
