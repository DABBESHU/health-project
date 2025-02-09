class User {
  final String id;
  final String name;
  final String email;
  final String contact;
  final String address;
  final String userType; // 'Patient', 'Doctor', 'Nurse'

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.contact,
    required this.address,
    required this.userType,
  });
}
