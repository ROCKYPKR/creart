import 'package:creartfinal/about.dart';
import 'package:creartfinal/carrears.dart';
import 'package:creartfinal/portfolio.dart';

import 'main_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'client.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: true,
      home: BottomNavBar(),
      title: "CreArt Solutions",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 4,
          color: Colors.white,
        ),
      ),
    ));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Color(0xFFf0f1f0),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _getPage(_page),
    );
  }
}

_getPage(int page) {
  switch (page) {
    case 0:
      return New();
    case 1:
      return Client();
    case 2:
      return Portfolio();
    case 3:
      return Careears();
    case 4:
      return About();
    default:
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("This is the basket page"),
        ],
      );
  }
}
