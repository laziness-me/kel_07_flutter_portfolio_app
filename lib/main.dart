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
      // Changed the background color
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (BuildContext context, int index) {
          return CVDetail(person: persons[index]);
        },
      ),
    );
  }
}

class CVDetail extends StatefulWidget {
  final Person person;

  CVDetail({required this.person});

  @override
  _CVDetailState createState() => _CVDetailState();
}

class _CVDetailState extends State<CVDetail> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(widget.person.profilePicture),
            radius: 50.0,
          ),
          SizedBox(height: 20.0),
          Text(
            'Name: ${widget.person.name}',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'ID: ${widget.person.id}',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Profession: ${widget.person.profession}',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          // Wrapped bio text with GestureDetector to enable expansion
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Bio: ',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(
                      isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      // Changed the color of arrow icon
                      color: Colors.blue,
                    ),
                  ],
                ),
                // Added conditional widget for expanding bio
                isExpanded
                    ? Text(
                        '${widget.person.bio}',
                        style: TextStyle(fontSize: 16.0),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          // Added phone number with icon
          Row(
            children: [
              Icon(Icons.phone),
              SizedBox(width: 5.0),
              Text(
                'Phone: ${widget.person.phone}',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          // Added email with icon
          Row(
            children: [
              Icon(Icons.email),
              SizedBox(width: 5.0),
              Text(
                'Email: ${widget.person.email}',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
