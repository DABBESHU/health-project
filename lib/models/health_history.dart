class HealthHistory {
  final String id;
  final String patientId;
  final String testName;
  final DateTime date;
  final String result;
  final String doctorId;

  HealthHistory({
    required this.id,
    required this.patientId,
    required this.testName,
    required this.date,
    required this.result,
    required this.doctorId,
  });
}
