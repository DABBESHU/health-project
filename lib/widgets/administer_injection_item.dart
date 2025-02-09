import 'package:flutter/material.dart';
import '../core/constants.dart';

class AdministerInjectionItem extends StatelessWidget {
  final String patientName;
  final String injection;
  final String date;
  final String time;
  final String medicineName;
  final String location;
  final String nurseName;

  AdministerInjectionItem({
    required this.patientName,
    required this.injection,
    required this.date,
    required this.time,
    required this.medicineName,
    required this.location,
    required this.nurseName,
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
            Text('Patient: $patientName', style: AppTextStyles.bodyTextStyle),
            SizedBox(height: AppDimensions.defaultPadding / 2),
            Text('Injection: $injection', style: AppTextStyles.bodyTextStyle),
            Text('Date: $date', style: AppTextStyles.bodyTextStyle),
            Text('Time: $time', style: AppTextStyles.bodyTextStyle),
            Text('Medicine Name: $medicineName',
                style: AppTextStyles.bodyTextStyle),
            Text('Location: $location', style: AppTextStyles.bodyTextStyle),
            Text('Nurse: $nurseName', style: AppTextStyles.bodyTextStyle),
          ],
        ),
      ),
    );
  }
}
