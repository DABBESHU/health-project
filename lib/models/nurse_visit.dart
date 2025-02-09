class NurseVisit {
  final String id;
  final String patientId;
  final String nurseId;
  final DateTime date;
  final String description;

  NurseVisit({
    required this.id,
    required this.patientId,
    required this.nurseId,
    required this.date,
    required this.description,
  });
}
