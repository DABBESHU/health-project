// constants.dart

import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor =
      Color(0xFFBE9A60); // Purple for primary actions
  static const Color secondaryColor =
      Color(0xFF03DAC6); // Teal for secondary actions
  static const Color backgroundColor =
      Color(0xFF434343); // Light gray background
  static const Color cardColor = Color(0xFFFFFFFF); // White for cards or panels
  static const Color errorColor = Color(0xFFB00020); // Red for error messages
  static const Color successColor =
      Color(0xFF4CAF50); // Green for success messages
  static const Color borderColor = Color(0xFFBDBDBD); // Light border color

  static const Color textPrimaryColor =
      Color(0xFF212121); // Dark text for primary content
  static const Color textSecondaryColor =
      Color(0xFF757575); // Light text for secondary content
}

class AppTextStyles {
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryColor,
  );

  static const TextStyle subheadingStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimaryColor,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondaryColor,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.cardColor,
  );

  static const TextStyle errorTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.errorColor,
  );
}

class AppDimensions {
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double cardElevation = 5.0;
  static const double borderRadius = 8.0;
  static const double iconSize = 24.0;
}
