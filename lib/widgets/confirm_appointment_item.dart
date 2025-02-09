import 'package:flutter/material.dart';
import '../core/constants.dart';

class ConfirmAppointmentItem extends StatelessWidget {
  final String patientName;
  final String appointmentDate;
  final String time;
  final String location;

  ConfirmAppointmentItem({
    required this.patientName,
    required this.appointmentDate,
    required this.time,
    required this.location,
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
            Text('Appointment Date: $appointmentDate',
                style: AppTextStyles.bodyTextStyle),
            Text('Time: $time', style: AppTextStyles.bodyTextStyle),
            Text('Location: $location', style: AppTextStyles.bodyTextStyle),
          ],
        ),
      ),
    );
  }
}
