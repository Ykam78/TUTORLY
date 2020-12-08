import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffAACFD0),
        appBar: new AppBar(
          centerTitle: true,
          title: Text('Contact Us'),
        ),
        body: Center(
            child: RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.mail),
          label: Text('Send Us an Email.'),
          color: Colors.amber,
          textColor: Colors.black,
        )));
  }
}
