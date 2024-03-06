class Person {
  final String name;
  final String id;
  final String profession;
  final String profilePicture;
  final String phone;
  final String email;

  Person({
    required this.name,
    required this.id,
    required this.profession,
    required this.profilePicture,
    required this.phone,
    required this.email,
  });
}

List<Person> persons = [
  Person(
    name: 'Albiona Qalbu Shoukhi',
    id: '22091397076',
    profession: 'Software Engineer',
    profilePicture: 'assets/profile.png',
    phone: '+1234567890',
    email: 'albiona@email.com',
  ),
  Person(
    name: 'Farah Adilah Hasan',
    id: '22091397092',
    profession: 'UX Designer',
    profilePicture: 'assets/profile.png',
    phone: '+1234567891',
    email: 'farah@email.com',
  ),
  Person(
    name: 'Zahroh Salsabila',
    id: '22091397094',
    profession: 'Data Scientist',
    profilePicture: 'assets/profile.png',
    phone: '+1234567892',
    email: 'zahroh@email.com',
  ),
];
