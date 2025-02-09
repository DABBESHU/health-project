// appointment_item.dart

import 'package:flutter/material.dart';
import '../core/constants.dart';

class AppointmentItem extends StatelessWidget {
  final String patientName;
  final String appointmentDate;
  final String time;
  final String status;

  const AppointmentItem({
    required this.patientName,
    required this.appointmentDate,
    required this.time,
    required this.status,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Patient Name and Appointment Date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(patientName, style: AppTextStyles.subheadingStyle),
                SizedBox(height: AppDimensions.defaultPadding / 2),
                Text('Date: $appointmentDate',
                    style: AppTextStyles.bodyTextStyle),
                SizedBox(height: AppDimensions.defaultPadding / 2),
                Text('Time: $time', style: AppTextStyles.bodyTextStyle),
              ],
            ),
            // Appointment Status
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: status == 'Completed'
                    ? AppColors.successColor
                    : AppColors.errorColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                status,
                style: AppTextStyles.bodyTextStyle
                    .copyWith(color: AppColors.cardColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
