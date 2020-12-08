import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return Scaffold(
        backgroundColor: Color(0xffAACFD0),
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffAACFD0),
          title: Text('FRECUENTLY ASKED QUESTIONS'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(''),
              Text(''),
              Text(
                'Q: Whos behind this project?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34495E)),
              ),
              Text(
                'A: A group of UTRGV students',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(''),
              Text(''),
              Text(
                'Q: Whats TUTORLY mission?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34495E)),
              ),
              Text(
                'A: Providing a flexible platform for students where they can generate money on their own terms.',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(''),
              Text(''),
              Text(
                'Q: Is this app legit?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34495E)),
              ),
              Text(
                'A: Yes! you can trust all tutors available have been screened for maximum user safety.',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(''),
              Text(''),
              Text(
                'Q: Whos funding the project?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34495E)),
              ),
              Text(
                'A: As of now the sustainabilty of the app depends on the user.',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              Text(''),
              Text(''),
              Text(
                'Q: Is this free to download?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff34495E)),
              ),
              Text(
                'A: Yes, you can run the app on any android device.',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ]));
  }
}
