import 'package:flutter/material.dart';
import 'package:tutorly/main.dart';
import 'package:tutorly/screens/Contact%20us/ContactUs.dart';
import 'package:tutorly/screens/FAQs/FAQs.dart';
import 'package:tutorly/screens/payments/payment.dart';
import 'package:tutorly/services/auth.dart';
import 'package:tutorly/screens/home/profile.dart';
import 'package:tutorly/screens/tutors/tmajors.dart';
import 'package:tutorly/screens/students/smajors.dart';

class Home_Tutor extends StatefulWidget {
  @override
  _Home_TutorState createState() => _Home_TutorState();
}

class _Home_TutorState extends State<Home_Tutor> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[400],
          title: Text('Home'),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text('Sign out'),
              textColor: Colors.white,
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ]),
          
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.blue[600],
                  Colors.lightBlueAccent,
                ]),
              ),
              child: Text(
                '                Main Menu',
                style: TextStyle(fontSize: 20),
              ),
            ),
            new ListTile(
              leading: new IconButton(
                  icon: Icon(Icons.person, color: Colors.black),
                  color: Colors.black),
              title: Text(
                'My Profile',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ProfilePage()));
              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              leading: new IconButton(
                  icon: Icon(Icons.payment, color: Colors.black),
                  color: Colors.black),
              title: Text(
                'Add Payment Method',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Payments()));
              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              leading: new IconButton(
                  icon: Icon(Icons.question_answer, color: Colors.black),
                  color: Colors.black),
              title: Text(
                'FAQs',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new FAQ()));
                
              },
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              leading: new IconButton(
                  icon: Icon(Icons.email, color: Colors.black),
                  color: Colors.black),
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 15),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Contact()));
               
              },
            ),

            ],
        ),
      ),

            body:Center(child: 
            
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              
              
              children: <Widget>[

                
                Text('What would you like to do today ?',style: TextStyle(
                  
                  color:Colors.white,
                  fontSize: 22.0,

                  ),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      RawMaterialButton(onPressed: (){

                          Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new TMajors()));

                      },
                    child:Icon(Icons.school,size: 35,),
                    fillColor: Colors.yellow,
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),


                
                ),


                    Text('Become a Tutor',style: TextStyle(
                      
                      fontSize: 20.0,
                      color:Colors.white
                      ),),

                    

                  ],

                    
                  ),

                  Column(children: <Widget>[

                    RawMaterialButton(onPressed: (){
                       Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new SMajors()));
                    },
                child:Icon(Icons.search,size: 35,),
               
                fillColor: Colors.green,
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),


                
                ),

                    Text('Find a Tutor',style: TextStyle(
                      fontSize:20.0,
                      color:Colors.white ),),
                     


                  ],)
                ],)

               
                
                
                

                

                
                
              ],

              


            ),)
    );
  }
}
