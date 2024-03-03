class Person {
  final String name;
  final String id;
  final String profession;
  final String bio;
  final String profilePicture;

  Person({
    required this.name,
    required this.id,
    required this.profession,
    required this.bio,
    required this.profilePicture,
  });
}

List<Person> persons = [
  Person(
    name: 'Albiona Qalbu Shoukhi',
    id: '22091397076',
    profession: 'Software Engineer',
    bio: 'Experienced software engineer with expertise in Flutter development.',
    profilePicture: 'assets/profile.png',
  ),
  Person(
    name: 'Farah Adilah Hasan',
    id: '22091397092',
    profession: 'UX Designer',
    bio: 'Passionate UX designer with a focus on creating intuitive user experiences.',
    profilePicture: 'assets/profile.png',
  ),
  Person(
    name: 'Zahroh Salsabila',
    id: '22091397094',
    profession: 'Data Scientist',
    bio: 'Data scientist with a background in machine learning and predictive analytics.',
    profilePicture: 'assets/profile.png',
  ),
];
