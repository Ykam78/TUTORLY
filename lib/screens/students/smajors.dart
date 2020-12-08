import 'package:flutter/material.dart';
import 'package:tutorly/screens/students/scmpe.dart';

class SMajors extends StatefulWidget {
  @override
  _SMajorsState createState() => _SMajorsState();
}

class _SMajorsState extends State<SMajors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffAACFD0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffAACFD0),
          title: Text(
            'List of Majors',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new SCMPE()));
            },
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://www.supamike.com/wp-content/uploads/2016/01/tech-support-consulting-puerto-vallarta-computer-safe.png"),
            ),
            title: Text(
              "Computer Engineering",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://cdn.dribbble.com/users/21480/screenshots/4138134/earth.png"),
            ),
            title: Text(
              "Biology",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://t3.ftcdn.net/jpg/00/93/11/18/240_F_93111849_Hw0rUjuNsnfR863wOzYeA6rIwwjrAceI.jpg"),
            ),
            title: Text(
              "Finance",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://www.shareicon.net/data/512x512/2016/09/21/831144_book_512x512.png"),
            ),
            title: Text(
              "Literature",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://st2.depositphotos.com/4681751/6994/v/450/depositphotos_69942365-stock-illustration-atom-symbol.jpg"),
            ),
            title: Text(
              "Physics",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://msc-inp-insa-ensfea-toulouse.fr/wp-content/uploads/2018/06/logo_chemistry.png"),
            ),
            title: Text(
              "Chemistry",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://comps.gograph.com/pi-with-numbers-of-pi-in-a-circle_gg91304239.jpg"),
            ),
            title: Text(
              "Mathematics",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/b/progettazione-di-vettore-di-logo-del-fulmine-94308270.jpg"),
            ),
            title: Text(
              "Electrical Engineering",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://www.pngitem.com/pimgs/m/243-2437394_mechanical-circle-hd-png-download.png"),
            ),
            title: Text(
              "Mechanical Engineering",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://cdn2.vectorstock.com/i/1000x1000/14/26/technology-digital-cyber-security-lock-circle-vector-16271426.jpg"),
            ),
            title: Text(
              "Cybersecurity",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://cdn.technologynetworks.com/tn/images/thumbs/jpeg/360_360/have-we-overestimated-how-many-coding-genes-we-have-308399.jpg"),
            ),
            title: Text(
              "Biomedical Science",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://images.vexels.com/media/users/3/130123/isolated/preview/451253d81a55a06cc55363c70acf09b3-dollar-sign-yellow-circle-by-vexels.png"),
            ),
            title: Text(
              "Economics",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/474x/8c/27/89/8c2789abb31459b44bfaa3dbdaf5b724.jpg"),
            ),
            title: Text(
              "Nursing",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://wellness.sfsu.edu/sites/default/files/styles/sf_state_250x250/public/images/Nutrition%20circle%20logo.png?itok=dTiJD67D"),
            ),
            title: Text(
              "Nutrition",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.white,
            ),
          )
        ]));
  }
}
