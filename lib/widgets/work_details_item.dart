import 'package:flutter/material.dart';
import '../core/constants.dart';

class WorkDetailsItem extends StatelessWidget {
  final String date;
  final String hoursWorked;
  final String tasksCompleted;

  WorkDetailsItem({
    required this.date,
    required this.hoursWorked,
    required this.tasksCompleted,
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
            Text('Date: $date', style: AppTextStyles.bodyTextStyle),
            SizedBox(height: AppDimensions.defaultPadding / 2),
            Text('Hours Worked: $hoursWorked',
                style: AppTextStyles.bodyTextStyle),
            Text('Tasks Completed: $tasksCompleted',
                style: AppTextStyles.bodyTextStyle),
          ],
        ),
      ),
    );
  }
}
