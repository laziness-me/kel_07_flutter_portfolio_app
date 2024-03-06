import 'package:flutter/material.dart';
import 'person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CVDetailList(persons: persons),
    );
  }
}

class CVDetailList extends StatelessWidget {
  final List<Person> persons;

  CVDetailList({required this.persons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV List'),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (BuildContext context, int index) {
          return CVDetail(person: persons[index]);
        },
      ),
    );
  }
}

class CVDetail extends StatelessWidget {
  final Person person;

  CVDetail({required this.person});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(person.profilePicture),
            radius: 50.0,
          ),
          SizedBox(height: 20.0),
          Text(
            'Name: ${person.name}',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'ID: ${person.id}', // Displaying the 'id' field
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Profession: ${person.profession}',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Bio: ${person.bio}',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
