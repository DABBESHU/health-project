// profile_info_card.dart

import 'package:flutter/material.dart';
import '../core/constants.dart';

class ProfileInfoCard extends StatelessWidget {
  final String name;
  final String contact;
  final String email;
  final String address;

  const ProfileInfoCard({
    required this.name,
    required this.contact,
    required this.email,
    required this.address,
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
            // Name Section
            Row(
              children: [
                Icon(Icons.person, color: AppColors.primaryColor),
                SizedBox(width: AppDimensions.defaultPadding / 2),
                Text(
                  'Name: $name',
                  style: AppTextStyles.subheadingStyle,
                ),
              ],
            ),
            SizedBox(height: AppDimensions.defaultPadding),

            // Contact Section
            Row(
              children: [
                Icon(Icons.phone, color: AppColors.primaryColor),
                SizedBox(width: AppDimensions.defaultPadding / 2),
                Text(
                  'Contact: $contact',
                  style: AppTextStyles.bodyTextStyle,
                ),
              ],
            ),
            SizedBox(height: AppDimensions.defaultPadding),

            // Email Section
            Row(
              children: [
                Icon(Icons.email, color: AppColors.primaryColor),
                SizedBox(width: AppDimensions.defaultPadding / 2),
                Text(
                  'Email: $email',
                  style: AppTextStyles.bodyTextStyle,
                ),
              ],
            ),
            SizedBox(height: AppDimensions.defaultPadding),

            // Address Section
            Row(
              children: [
                Icon(Icons.location_on, color: AppColors.primaryColor),
                SizedBox(width: AppDimensions.defaultPadding / 2),
                Expanded(
                  child: Text(
                    'Address: $address',
                    style: AppTextStyles.bodyTextStyle,
                    overflow: TextOverflow
                        .ellipsis, // In case the address is too long
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
