// main.dart

import 'package:flutter/material.dart';
import 'views/login_page.dart';
import 'views/signup_page.dart';
import 'views/patient_profile_page.dart';
import 'views/nurse_dashboard_page.dart';
import 'views/doctor_dashboard_page.dart';
import 'widgets/custom_button.dart';
import 'core/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        textTheme: TextTheme(
          bodyLarge: AppTextStyles.bodyTextStyle,
          bodyMedium: AppTextStyles.bodyTextStyle,
          headlineLarge: AppTextStyles.headingStyle,
          headlineMedium: AppTextStyles.subheadingStyle,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/patient_profile': (context) =>
            PatientPage(), // Ensure this line is present
        '/login': (context) => LoginPage(),
        '/nurse_dashboard': (context) => NurseDashboardPage(),
        '/doctor_dashboard': (context) => DoctorDashboardPage(),
      },
    );
  }
}
