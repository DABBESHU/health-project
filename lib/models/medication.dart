class Medication {
  final String id;
  final String patientId;
  final String medicationName;
  final DateTime date;
  final String doctorId;

  Medication({
    required this.id,
    required this.patientId,
    required this.medicationName,
    required this.date,
    required this.doctorId,
  });
}
