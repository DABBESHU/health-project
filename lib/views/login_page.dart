// login_page.dart

import 'package:flutter/material.dart';
import '../core/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _userRole = 'Patient'; // Default Role

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Login',
            style: AppTextStyles.headingStyle.copyWith(color: Colors.white)),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.defaultPadding),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Email Input
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.email, color: AppColors.primaryColor),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadius),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onChanged: (value) => setState(() => _email = value),
              ),
              SizedBox(height: AppDimensions.defaultPadding),

              // Password Input
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadius),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onChanged: (value) => setState(() => _password = value),
              ),
              SizedBox(height: AppDimensions.defaultPadding),

              // User Role Selector (Patient, Nurse, Doctor)
              DropdownButtonFormField<String>(
                value: _userRole,
                onChanged: (newValue) => setState(() => _userRole = newValue!),
                items: ['Patient', 'Nurse', 'Doctor'].map((role) {
                  return DropdownMenuItem<String>(
                    value: role,
                    child: Text(role, style: TextStyle(color: Colors.white)),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select Role',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadius),
                  ),
                ),
                dropdownColor: AppColors.backgroundColor,
              ),
              SizedBox(height: AppDimensions.defaultPadding),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadius),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate to the correct dashboard based on user role
                    if (_userRole == 'Doctor') {
                      Navigator.pushReplacementNamed(
                          context, '/doctor_dashboard');
                    } else if (_userRole == 'Nurse') {
                      Navigator.pushReplacementNamed(
                          context, '/nurse_dashboard');
                    } else {
                      Navigator.pushReplacementNamed(
                          context, '/patient_profile');
                    }
                  }
                },
                child: Text('Login',
                    style: AppTextStyles.buttonTextStyle
                        .copyWith(color: Colors.white)),
              ),
              SizedBox(height: AppDimensions.defaultPadding),

              // Sign up Text
              TextButton(
                onPressed: () {
                  // Navigate to Sign Up page
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Don\'t have an account? Sign up',
                    style: TextStyle(color: AppColors.primaryColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
