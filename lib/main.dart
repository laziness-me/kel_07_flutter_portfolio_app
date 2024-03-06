import 'package:flutter/material.dart';
import 'person.dart'; // Importing the Person class from person.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CVDetailList(persons: persons), // Passing the list of persons to CVDetailList widget
    );
  }
}

class CVDetailList extends StatelessWidget {
  final List<Person> persons; // List of persons

  CVDetailList({required this.persons}); // Constructor to initialize the list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV List'),
      ),
      backgroundColor: Colors.grey[400],
      body: ListView.builder(
        itemCount: persons.length, // Number of persons in the list
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: CVDetail(person: persons[index]), // Passing each person to CVDetail widget
          );
        },
      ),
    );
  }
}

class CVDetail extends StatelessWidget {
  final Person person; // Person object

  CVDetail({required this.person}); // Constructor to initialize person

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(person.profilePicture), 
          radius: 40.0, 
        ),
        SizedBox(height: 5.0),
        Text(
          person.profession.toUpperCase(), 
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        SizedBox(height: 3.0),
        Text(
          person.name, 
          style: TextStyle(fontSize: 12.0),
        ),
        SizedBox(height: 3.0),
        Text(
          person.id, 
          style: TextStyle(fontSize: 10.0),
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconTextButton(icon: Icons.phone, text: person.phone), // Phone icon and number
            IconTextButton(icon: Icons.email, text: person.email), // Email icon and address
          ],
        ),
      ],
    );
  }
}

class IconTextButton extends StatelessWidget {
  final IconData icon; // Icon data
  final String text; // Text

  IconTextButton({required this.icon, required this.text}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          Icon(icon, size: 16.0), // Adjusted icon size
          SizedBox(width: 3.0),
          Text(
            text,
            style: TextStyle(fontSize: 10.0), // Adjusted font size
          ),
        ],
      ),
    );
  }
}
