import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SCSience extends StatefulWidget {
  @override
  _SCSienceState createState() => _SCSienceState();
}

class _SCSienceState extends State<SCSience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffAACFD0),
          title: Text(
            'Computer Science',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection("Posts").snapshots(),
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                DocumentSnapshot post = snapshot.data.documents[index];

                return Card(
                  child: ListTile(
                    leading: Image.network(
                      post['image'],
                    ),
                    title: Text(
                      post['full name'],
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    subtitle: Text(
                      post['grade received'] +
                          "\n" +
                          post['date available'] +
                          "\n" +
                          post['time available'] +
                          "\n" +
                          post['email'],
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Text(post['price per hour']),
                    isThreeLine: true,
                  ),
                  color: Color(0xffAACFD0),
                  elevation: 10,
                );
              },
            );
          },
        ));
  }
}
