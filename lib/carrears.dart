import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Careears extends StatefulWidget {
  @override
  _CareearsState createState() => _CareearsState();
}

class _CareearsState extends State<Careears> {
  Color firstColor = Colors.lightBlue;

  Color secondColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [secondColor, firstColor],
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 220),
                child: Text(
                  "Careers",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  "Our small team is growing fast. We are looking for young, passionate and committed individuals in making CreArt Solutions a truly tremendous Company. Come join us by sending your Resume on hello@creart.in!",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Nikhil(
                          "https://upload.wikimedia.org/wikipedia/commons/9/93/Wordpress_Blue_logo.png",
                          "Traine WordPress",
                          "FRESHERS",
                          "Basic PHP",
                          "0 EXP",
                          "Good with core PHP . Looking for a person who can do best with lesser code & understanding.",
                          "https://assets.materialup.com/uploads/a941a3d7-9015-4b39-8c00-6caa06a6f147/preview.jpg",
                          "https://assets.materialup.com/uploads/a941a3d7-9015-4b39-8c00-6caa06a6f147/preview.jpg",
                          "https://assets.materialup.com/uploads/a941a3d7-9015-4b39-8c00-6caa06a6f147/preview.jpg",
                          context),
                      Nikhil(
                          "https://pngimg.com/uploads/php/php_PNG50.png",
                          "PHP Developer",
                          "PHP|MVC|JQUERY|AJAX",
                          "Basic PHP",
                          "1 EXP",
                          "Good command on PHP, MVC, JQuery, Ajax. Angular JS will be add on.Fluent in English Writing/Reading.",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          context),
                      Nikhil(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5SrMs5sBoAgpppKGFOHUZEMrVawVWjXYjCp4qD0SxHTN7awg6VA",
                          "Traine Web Desiner ",
                          "FRESHERS",
                          "Basic PHP",
                          "0 EXP",
                          "Looking for creative and dedicated person who is willing to play with creativity & designs.",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          context),
                      Nikhil(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAncYXcLomHJ3YPDXC1Zk0MCpk39adSmfVCD-3kkoq2j_4h79K",
                          "Traine BDM",
                          "BDM",
                          "Basic PHP",
                          "0 EXP",
                          "Very good with communication in English as well as with writing. A person must be curious about knowing technology.",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          context),
                      Nikhil(
                          "http://pngimg.com/uploads/android_logo/android_logo_PNG23.png",
                          "Traine Android",
                          "FRESHERS",
                          "Basic PHP",
                          "0 EXP",
                          "Good knowledge of JAVA, J2EE and Basics of Android. Crazy about mobile technology.",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          context),
                      Nikhil(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1ez7uYoTsKGMgv2VBBkdv5PGi5SW-kAfKg4ml3yTg4rqU-Gc-TA",
                          "Traine IOS",
                          "FRESHERS",
                          "Basic PHP",
                          "0 EXP",
                          "Good knowledge of C , C++. Apple fan & Crazy about IOS gadgets.",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          context),
                      Nikhil(
                          "https://i1.wp.com/www.devicebits.com/wp-content/uploads/2017/03/support-predict-icon.png?fit=400%2C400&ssl=1",
                          "AI & ML",
                          "FRESHERS",
                          "Basic PHP",
                          "0 EXP",
                          "Good knowledge of C , C++. Apple fan & Crazy about IOS gadgets.",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          "https://colorlib.com/wp/wp-content/uploads/sites/2/x-wordpress-theme-examples.jpg",
                          context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget Nikhil(var imgmain, var tittle, var subtittle, var subtittle1, var exp,
    var containt, var img1, var img2, var img3, context) {
  return Stack(
    children: <Widget>[
      Container(
        height: 650,
        width: 300,
        child: Card(
          // shape: BeveledRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(80),),
          // ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: new BorderSide(color: Colors.white, width: 2.0),
          ),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 40,
                  width: 140,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side:
                          new BorderSide(color: Colors.transparent, width: 2.0),
                    ),
                    color: Colors.blue[300],
                    child: Center(
                      child: Text(
                        "Vacancis : 2",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          imgmain,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        tittle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        subtittle,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        subtittle1,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            backgroundColor: Colors.yellow[600]),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Requirement",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Container(
                    height: 35,
                    width: 80,
                    child: Card(
                      elevation: 0.0,
                      color: Colors.grey[300],
                      child: Center(child: Text(exp)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 14.0, right: 14, bottom: 14, top: 25),
                child: Container(
                  child: Text(
                    containt,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: RaisedButton(
                  elevation: 8.0,
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    infoDialog(context);
                  },
                  child: Text(
                    "Applay Now",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 180, top: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Example",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          height: 120, width: 120, child: Image.network(img1)),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 120, width: 120, child: Image.network(img2)),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 120, width: 120, child: Image.network(img3)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Future<bool> infoDialog(context) async {
  TextEditingController _textFieldController = TextEditingController();
  TextEditingController _textFieldController1 = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  TextEditingController _textFieldController3 = TextEditingController();
  TextEditingController _textFieldController4 = TextEditingController();

  void _add() {
    final DocumentReference documentReference =
        Firestore.instance.document("myData/carrers");

    Map<String, String> data = <String, String>{
      "Name": _textFieldController.text,
      "Email": _textFieldController1.text,
      "MobileNo" : _textFieldController2.text,
      "Intrest" : _textFieldController3.text,
      "Message" : _textFieldController4.text

    };
    documentReference.setData(data).whenComplete(() {
      print("Document Added");
    }).catchError((e) => print(e));
  }


  return showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Enter Your Details"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  controller: _textFieldController,
                  decoration: InputDecoration(
                    hintText: "Your Name",
                    icon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  controller: _textFieldController1,
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    icon: Icon(Icons.email),
                  ),
                ),
                TextField(
                  controller: _textFieldController2,
                  decoration: InputDecoration(
                    hintText: "Your Mobile",
                    icon: Icon(Icons.mobile_screen_share),
                  ),
                ),
                TextField(
                  controller: _textFieldController3,
                  decoration: InputDecoration(
                    hintText: "What are you intrested in?",
                    icon: Icon(Icons.note),
                  ),
                ),
                TextField(
                  controller: _textFieldController4,
                  decoration: InputDecoration(
                    hintText: "Your Message",
                    icon: Icon(Icons.message),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("CANCEL"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text("SUBMIT"),
              onPressed: _add,
            )
          ],
        );
      });
}
