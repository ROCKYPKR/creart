import 'package:creartfinal/about.dart';
import 'package:creartfinal/carrears.dart';
import 'package:creartfinal/portfolio.dart';
import 'package:advanced_splashscreen/advanced_splashscreen.dart';
import 'main_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'client.dart';

void main() => runApp(MaterialApp(
      home: AdvancedSplashScreen(
        appTitle: "CreArt Solutions",
        child: BottomNavBar(),
        seconds: 2,
        colorList: [
          Color(0xff9bcebb),
          Color(0xff9bceff),
          Color(0xff9bcfff),
        ],
        appIcon: "assets/logo.png",
      ),
      debugShowCheckedModeBanner: true,
      // home: BottomNavBar(),
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
          Icon(Icons.view_list, size: 30),
          Icon(Icons.work, size: 30),
          Icon(Icons.card_membership, size: 30),
          Icon(Icons.person, size: 30),
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
