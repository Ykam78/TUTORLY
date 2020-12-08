import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffAACFD0),
      appBar: new AppBar(
        backgroundColor: Color(0xffAACFD0),
        centerTitle: true,
        title: Text('Add Payments'),
      ),
    );
  }
}
