import 'package:flutter/material.dart';
import 'package:tutorly/screens/students/SCSience.dart';

class SCMPE extends StatefulWidget {
  @override
  _SCMPEState createState() => _SCMPEState();
}

class _SCMPEState extends State<SCMPE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffAACFD0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffAACFD0),
          title: Text(
            'CMPE Classes',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new SCSience()));
              },
              title: Text(
                "Computer Science",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Operating System",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Algorithms & Data Structure",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Digital System",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Systems Programming",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Software Engineering",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Computer Architecture",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Microcontroller",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Computer Networks",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Object Oriented in JAVA",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Object Oriented C#",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Intro to VLSI",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Microprocessor",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
