class Appointment {
  final String id;
  final String patientId;
  final String doctorId;
  final String nurseId;
  final DateTime date;
  final String time;
  final String status; // 'Pending', 'Confirmed', 'Completed'

  Appointment({
    required this.id,
    required this.patientId,
    required this.doctorId,
    required this.nurseId,
    required this.date,
    required this.time,
    required this.status,
  });
}
