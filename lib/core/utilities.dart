// utilities.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utilities {
  // Helper function for formatting date in 'dd MMM, yyyy' format
  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('dd MMM, yyyy');
    return formatter.format(date);
  }

  // Helper function for formatting time in 'HH:mm' format
  static String formatTime(DateTime time) {
    final DateFormat formatter = DateFormat('HH:mm');
    return formatter.format(time);
  }

  // Helper function for showing snack bar messages
  static void showSnackBar(BuildContext context, String message,
      {Color? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor ?? Colors.black,
      ),
    );
  }

  // Helper function for showing dialog box with custom title and content
  static void showDialogBox(
      BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  // Helper function for validating email format
  static bool isValidEmail(String email) {
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  // Helper function for padding around UI components
  static EdgeInsetsGeometry getDefaultPadding() {
    return EdgeInsets.all(16.0); // Replace 16.0 with your desired padding value
  }

  // Helper function for rounded corners on cards
  static BorderRadiusGeometry getCardBorderRadius() {
    return BorderRadius.circular(
        8.0); // Replace 8.0 with your desired border radius value
  }
}
