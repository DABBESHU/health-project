import 'package:flutter/material.dart';
import '../core/constants.dart';

class InjectionItem extends StatelessWidget {
  final String date;
  final String injection;
  final String nurse;

  InjectionItem(
      {required this.date, required this.injection, required this.nurse});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: AppDimensions.defaultPadding / 2),
      child: ListTile(
        title: Text(injection, style: AppTextStyles.bodyTextStyle),
        subtitle: Text('Date: $date\nAdministered by: $nurse',
            style: AppTextStyles.bodyTextStyle),
      ),
    );
  }
}
