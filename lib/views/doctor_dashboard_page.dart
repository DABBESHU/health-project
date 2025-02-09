// doctor_dashboard_page.dart

import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/confirm_appointment_item.dart';
import '../widgets/visit_details_item.dart';
import '../widgets/administer_injection_item.dart';
import '../widgets/work_details_item.dart';

class DoctorDashboardPage extends StatefulWidget {
  @override
  _DoctorDashboardPageState createState() => _DoctorDashboardPageState();
}

class _DoctorDashboardPageState extends State<DoctorDashboardPage> {
  final String doctorName = "Dr. John Smith";
  String? selectedSection = "Nurse Tracking"; // Set default section

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Doctor Dashboard', style: AppTextStyles.headingStyle),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.logout),
        //     onPressed: () {
        //       // Handle logout action
        //       Navigator.pushReplacementNamed(context, '/login');
        //     },
        //   ),
        // ],
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display selected section data
              if (selectedSection != null) _buildSectionData(selectedSection!),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to create drawer
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/doctor.jpg'),
                ),
                SizedBox(width: 10),
                Text("Welcome, $doctorName",
                    style: AppTextStyles.headingStyle
                        .copyWith(color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(
                    Icons.track_changes, "Nurse Tracking", Colors.black, () {
                  setState(() {
                    selectedSection = "Nurse Tracking";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(
                    Icons.check_circle, "Confirm Appointments", Colors.black,
                    () {
                  setState(() {
                    selectedSection = "Confirm Appointments";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.history, "Recent Visits", Colors.black,
                    () {
                  setState(() {
                    selectedSection = "Recent Visits";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.medical_services,
                    "Recent Injections Administered", Colors.black, () {
                  setState(() {
                    selectedSection = "Recent Injections Administered";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(
                    Icons.schedule, "Upcoming Visits", Colors.black, () {
                  setState(() {
                    selectedSection = "Upcoming Visits";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.history, "Case History", Colors.black,
                    () {
                  setState(() {
                    selectedSection = "Case History";
                    Navigator.pop(context);
                  });
                }),
              ],
            ),
          ),
          Container(
            color: AppColors.primaryColor,
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text("Logout", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to create drawer items
  Widget _buildDrawerItem(
      IconData icon, String title, Color color, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryColor),
      title: Text(title,
          style: AppTextStyles.subheadingStyle.copyWith(color: color)),
      onTap: onTap,
    );
  }

  // Helper function to display section data
  Widget _buildSectionData(String section) {
    switch (section) {
      case "Nurse Tracking":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nurse Tracking', style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Jane Smith",
                    visitDate: "2025-03-10",
                    visitTime: "2:00 PM",
                    reachedTime: "2:15 PM",
                    location: "456 Elm St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Alex Brown",
                    visitDate: "2025-03-09",
                    visitTime: "11:00 AM",
                    reachedTime: "11:05 AM",
                    location: "789 Oak St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
              ],
            ),
          ],
        );
      case "Confirm Appointments":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Confirm Appointments', style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: ConfirmAppointmentItem(
                    patientName: "John Doe",
                    appointmentDate: "2025-03-12",
                    time: "3:00 PM",
                    location: "123 Main St, City, Country",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: ConfirmAppointmentItem(
                    patientName: "Jane Smith",
                    appointmentDate: "2025-03-13",
                    time: "10:00 AM",
                    location: "456 Elm St, City, Country",
                  ),
                ),
              ],
            ),
          ],
        );
      case "Recent Visits":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Visits', style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Jane Smith",
                    visitDate: "2025-03-10",
                    visitTime: "2:00 PM",
                    reachedTime: "2:15 PM",
                    location: "456 Elm St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Alex Brown",
                    visitDate: "2025-03-09",
                    visitTime: "11:00 AM",
                    reachedTime: "11:05 AM",
                    location: "789 Oak St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
              ],
            ),
          ],
        );
      case "Recent Injections Administered":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Injections Administered',
                style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: AdministerInjectionItem(
                    patientName: "Alex Brown",
                    injection: "Vitamin C",
                    date: "2025-03-09",
                    time: "11:30 AM",
                    medicineName: "Vitamin C Injection",
                    location: "789 Oak St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: AdministerInjectionItem(
                    patientName: "John Doe",
                    injection: "Flu Vaccine",
                    date: "2025-03-08",
                    time: "10:00 AM",
                    medicineName: "Flu Vaccine Injection",
                    location: "123 Main St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
              ],
            ),
          ],
        );
      case "Upcoming Visits":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Upcoming Visits', style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Emily Clark",
                    visitDate: "2025-03-14",
                    visitTime: "1:00 PM",
                    reachedTime: "Pending",
                    location: "321 Pine St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Michael Johnson",
                    visitDate: "2025-03-15",
                    visitTime: "4:00 PM",
                    reachedTime: "Pending",
                    location: "654 Maple St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
              ],
            ),
          ],
        );
      case "Case History":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Case History', style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "John Doe",
                    visitDate: "2025-02-20",
                    visitTime: "10:00 AM",
                    reachedTime: "10:05 AM",
                    location: "123 Main St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: VisitDetailsItem(
                    patientName: "Jane Smith",
                    visitDate: "2025-02-18",
                    visitTime: "1:00 PM",
                    reachedTime: "1:10 PM",
                    location: "456 Elm St, City, Country",
                    nurseName: "Nurse Mary Johnson",
                  ),
                ),
              ],
            ),
          ],
        );
      case "Nurse Work Details":
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nurse Work Details', style: AppTextStyles.subheadingStyle),
            SizedBox(height: AppDimensions.defaultPadding),
            Row(
              children: [
                Expanded(
                  child: WorkDetailsItem(
                    date: "2025-03-12",
                    hoursWorked: "8",
                    tasksCompleted: "5",
                  ),
                ),
                SizedBox(width: AppDimensions.defaultPadding),
                Expanded(
                  child: WorkDetailsItem(
                    date: "2025-03-13",
                    hoursWorked: "7",
                    tasksCompleted: "4",
                  ),
                ),
              ],
            ),
          ],
        );
      default:
        return Container();
    }
  }
}
