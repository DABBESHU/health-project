// health_history_item.dart

import 'package:flutter/material.dart';
import '../core/constants.dart';

class HealthHistoryItem extends StatelessWidget {
  final String testName;
  final String date;
  final String result;
  final String doctor;

  const HealthHistoryItem({
    required this.testName,
    required this.date,
    required this.result,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      elevation: AppDimensions.cardElevation,
      child: Padding(
        padding: EdgeInsets.all(AppDimensions.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Test Name
            Text(testName, style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding / 2),
            // Test Date
            Text('Date: $date', style: AppTextStyles.bodyTextStyle),
            SizedBox(height: AppDimensions.defaultPadding / 2),
            // Result
            Text('Result: $result', style: AppTextStyles.bodyTextStyle),
            SizedBox(height: AppDimensions.defaultPadding / 2),
            // Doctor's Name
            Text('Doctor: $doctor', style: AppTextStyles.bodyTextStyle),
          ],
        ),
      ),
    );
  }
}
