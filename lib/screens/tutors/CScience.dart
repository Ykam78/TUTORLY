import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:tutorly/screens/students/SCSience.dart';

class CSience extends StatefulWidget {
  @override
  _CSienceState createState() => _CSienceState();
}

String profile = '';
String fullname = '';
String phone = '';
String email = '';
String datea = '';
String timea = '';
String grade = '';
String price = '';
String cashapp = '';
File image;
String imgurl = '';
final firebase = Firestore.instance;

class _CSienceState extends State<CSience> {
  Future getImage() async {
    var img = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffAACFD0),
        title: Text(
          'Computer Science',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text('Tap the circle to enter a profile picture',
                  style: TextStyle(
                    fontSize: 20.0,
                  )),
              new Padding(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: () => getImage(),
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Color(0xff5DA0A2),
                    backgroundImage:
                        image != null ? FileImage(image) : NetworkImage("null"),
                  ),
                ),
              ),
              /*new ListTile(
            leading: const Icon(Icons.portrait, color: Colors.black),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Attach your profile picture",
              ),
              onChanged: (value) {
                profile = value;
              },
            ),
          ),*/
              new ListTile(
                leading: const Icon(Icons.person, color: Colors.black),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Name",
                  ),
                  onChanged: (value) {
                    fullname = value;
                  },
                ),
              ),
              /* new ListTile(
        leading: const Icon(Icons.phone,color: Colors.black),
        title: new TextField(
          decoration: new InputDecoration(
            hintText: "Phone",
          ),
           onChanged: (value){

            phone=value;}
        ),
      ),*/
              new ListTile(
                leading: const Icon(Icons.email, color: Colors.black),
                title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Email",
                    ),
                    onChanged: (value) {
                      email = value;
                    }),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(Icons.date_range, color: Colors.black),
                title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Date available",
                    ),
                    onChanged: (value) {
                      datea = value;
                    }),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(Icons.timer, color: Colors.black),
                title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Time available",
                    ),
                    onChanged: (value) {
                      timea = value;
                    }),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(Icons.school, color: Colors.black),
                title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Grade received in the class",
                    ),
                    onChanged: (value) {
                      grade = 'Grade received ' + value;
                    }),
              ),
              const Divider(
                height: 1.0,
              ),
              new ListTile(
                leading: const Icon(Icons.attach_money, color: Colors.black),
                title: new TextField(
                    decoration: new InputDecoration(
                      hintText: " Price per hour",
                    ),
                    onChanged: (value) {
                      price = ("\$" + value + " per hour");
                    }),
              ),
              new ListTile(
                leading: const Icon(Icons.settings, color: Colors.black),
                title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "CashApp Acount",
                    ),
                    onChanged: (value) {
                      email = value;
                    }),
              ),
              const Divider(
                height: 1.0,
              ),
              /*new ListTile(
        leading: const Icon(Icons.label),
        title: const Text('Nick'),
        subtitle: const Text('None'),
      ),
      new ListTile(
        leading: const Icon(Icons.today),
        title: const Text('Birthday'),
        subtitle: const Text('February 20, 1980'),
      ),
      new ListTile(
        leading: const Icon(Icons.group),
        title: const Text('Contact group'),
        subtitle: const Text('Not specified'),
      )*/

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                          color: Color(0xff5DA0A2),
                          child: Text('Submit post',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () async {
                            if (email.isEmpty ||
                                fullname == '' ||
                                price == '' ||
                                datea == '' ||
                                timea == '' ||
                                grade == '') {
                              return Alert(
                                  context: context,
                                  title: "Invalid input",
                                  desc: "You need to select one option",
                                  buttons: [
                                    DialogButton(
                                      key: Key("Try again"),
                                      child: Text("Please try again!"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ]).show();
                            } else {
                              /* return Alert(
                    
                      context: context,
                      title: "Post created",
                      desc: "Thank you!",
                      buttons: [
                        DialogButton(
                          key:Key("Try again"),
                          child: Text("Go back"),                          
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ]).show();*/
                              var pic = FirebaseStorage.instance
                                  .ref()
                                  .child(image.path);
                              var task = pic.putFile(image);

                              imgurl = await (await task.onComplete)
                                  .ref
                                  .getDownloadURL();
                              return firebase.collection("Posts").add({
                                'full name': fullname,
                                //'phone':phone,
                                'email': email,
                                'date available': datea,
                                'time available': timea,
                                'grade received': grade,
                                'price per hour': price,
                                'CashApp Account to pay': cashapp,
                                //'profile picture': profile,
                                'image': imgurl.toString(),
                              });
                            }
                          })),
                  Padding(
                      padding: EdgeInsets.all(25),
                      child: SizedBox(
                          width: 150,
                          height: 50,
                          child: RaisedButton(
                            color: Color(0xff5DA0A2),
                            child: Text('See my post',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          new SCSience()));
                            },
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
