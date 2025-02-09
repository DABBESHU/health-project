import 'package:flutter/material.dart';
import '../core/constants.dart';

class VisitDetailsItem extends StatelessWidget {
  final String patientName;
  final String visitDate;
  final String visitTime;
  final String reachedTime;
  final String location;
  final String nurseName;

  VisitDetailsItem({
    required this.patientName,
    required this.visitDate,
    required this.visitTime,
    required this.reachedTime,
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
            Text('Visit Date: $visitDate', style: AppTextStyles.bodyTextStyle),
            Text('Visit Time: $visitTime', style: AppTextStyles.bodyTextStyle),
            Text('Reached Time: $reachedTime',
                style: AppTextStyles.bodyTextStyle),
            Text('Location: $location', style: AppTextStyles.bodyTextStyle),
            Text('Nurse: $nurseName',
                style: AppTextStyles.bodyTextStyle), // Add nurse name
          ],
        ),
      ),
    );
  }
}
