import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/health_history_item.dart';
import '../widgets/appointment_item.dart';
import '../widgets/profile_info_card.dart';
import '../widgets/nurse_visit_item.dart';
import '../widgets/medication_item.dart';
import '../widgets/injection_item.dart';

class PatientPage extends StatefulWidget {
  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  final String patientName = "Durvesh Adulkar";
  final String contact = "+91 1234567890";
  final String email = "john.doe@example.com";
  final String address = "123 Main St, City, Country";

  String? selectedSection = "Upcoming Appointments"; // Set default section

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Patient Profile', style: AppTextStyles.headingStyle),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (selectedSection == "Profile")
                ProfileInfoCard(
                  name: patientName,
                  contact: contact,
                  email: email,
                  address: address,
                ),
              if (selectedSection != "Profile")
                SizedBox(height: AppDimensions.defaultPadding),

              // Display selected section data
              if (selectedSection != null && selectedSection != "Profile")
                _buildSectionData(selectedSection!),
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
                  backgroundImage: AssetImage('assets/patient.jpg'),
                ),
                SizedBox(width: 10),
                Text("Welcome, $patientName",
                    style: AppTextStyles.headingStyle
                        .copyWith(color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(Icons.person, "Profile", () {
                  setState(() {
                    selectedSection = "Profile";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.event, "Book Appointment", () {
                  setState(() {
                    selectedSection = "Book Appointment";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.history, "Case History", () {
                  setState(() {
                    selectedSection = "Case History";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.local_hospital, "Nurse Visits", () {
                  setState(() {
                    selectedSection = "Nurse Visits";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.medication, "Medications", () {
                  setState(() {
                    selectedSection = "Medications";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.vaccines, "Injections", () {
                  setState(() {
                    selectedSection = "Injections";
                    Navigator.pop(context);
                  });
                }),
                _buildDrawerItem(Icons.schedule, "Upcoming Appointments", () {
                  setState(() {
                    selectedSection = "Upcoming Appointments";
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
  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryColor),
      title: Text(title, style: AppTextStyles.subheadingStyle),
      onTap: onTap,
    );
  }

  // Helper function to display section data
  Widget _buildSectionData(String section) {
    switch (section) {
      case "Book Appointment":
        return CustomButton(
          text: "Book Appointment",
          onPressed: () {
            Navigator.pushNamed(context, '/book_appointment');
          },
        );
      case "Case History":
        return Row(
          children: [
            Expanded(
              child: HealthHistoryItem(
                testName: "Blood Test",
                date: "2025-02-01",
                result: "Normal",
                doctor: "Dr. John Smith",
              ),
            ),
            SizedBox(
                width: AppDimensions.defaultPadding), // Add space between items
            Expanded(
              child: HealthHistoryItem(
                testName: "X-Ray",
                date: "2025-01-25",
                result: "Clear",
                doctor: "Dr. Jane Doe",
              ),
            ),
          ],
        );
      case "Nurse Visits":
        return Row(
          children: [
            Expanded(
              child: NurseVisitItem(
                date: "2025-02-10",
                description: "Routine Checkup",
                nurse: "Nurse Mary Johnson",
              ),
            ),
            SizedBox(
                width: AppDimensions.defaultPadding), // Add space between items
            Expanded(
              child: NurseVisitItem(
                date: "2025-02-20",
                description: "Follow-up",
                nurse: "Nurse Mary Johnson",
              ),
            ),
          ],
        );
      case "Medications":
        return Row(
          children: [
            Expanded(
              child: MedicationItem(
                date: "2025-02-01",
                medication: "Paracetamol",
                doctor: "Dr. John Smith",
              ),
            ),
            SizedBox(
                width: AppDimensions.defaultPadding), // Add space between items
            Expanded(
              child: MedicationItem(
                date: "2025-02-15",
                medication: "Ibuprofen",
                doctor: "Dr. Jane Doe",
              ),
            ),
          ],
        );
      case "Injections":
        return Row(
          children: [
            Expanded(
              child: InjectionItem(
                date: "2025-02-05",
                injection: "Flu Vaccine",
                nurse: "Nurse Mary Johnson",
              ),
            ),
            SizedBox(
                width: AppDimensions.defaultPadding), // Add space between items
            Expanded(
              child: InjectionItem(
                date: "2025-02-25",
                injection: "Vitamin B12",
                nurse: "Nurse Mary Johnson",
              ),
            ),
          ],
        );
      case "Upcoming Appointments":
        return Row(
          children: [
            Expanded(
              child: AppointmentItem(
                patientName: "Durvesh Adulkar",
                appointmentDate: "2025-03-01",
                time: "3:00 PM",
                status: "Pending",
              ),
            ),
            SizedBox(
                width: AppDimensions.defaultPadding), // Add space between items
            Expanded(
              child: AppointmentItem(
                patientName: "Durvesh Adulkar",
                appointmentDate: "2025-03-15",
                time: "10:00 AM",
                status: "Pending",
              ),
            ),
          ],
        );
      default:
        return Container();
    }
  }
}
