import 'package:flutter/material.dart';

class MobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Mobile Apps"),
          leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios)),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: new Container(
          color: Colors.white30,
          child: new GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(8.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: <String>[
                'https://creart.in/wp-content/uploads/2017/01/beauty-retreat-app-01.jpg',
                'https://creart.in/wp-content/uploads/2017/01/beauty-retreat-app-02.jpg',
                'https://creart.in/wp-content/uploads/2017/01/beauty-retreat-app-03.jpg',
                'https://creart.in/wp-content/uploads/2017/01/dua-ve-sureler-01.png',
                'https://creart.in/wp-content/uploads/2017/01/zikirmatik-02.png',
                'https://creart.in/wp-content/uploads/2017/01/zikirmatik-01.png',
                'https://creart.in/wp-content/uploads/2017/01/elan-01.jpg',
                'https://creart.in/wp-content/uploads/2017/01/elan-02.jpg',
                'https://creart.in/wp-content/uploads/2017/01/elan-03.jpg',
                'https://creart.in/wp-content/uploads/2017/01/advance-apparel-glow-control-system.jpg',
                'https://creart.in/wp-content/uploads/2017/01/advance-apparel-glow-control-system-glow-panel.jpg',
                'https://creart.in/wp-content/uploads/2017/01/qdown-01.png',
                'https://creart.in/wp-content/uploads/2017/01/qdown-02.png',
                'https://creart.in/wp-content/uploads/2017/01/qdown-03.png',
                'https://creart.in/wp-content/uploads/2017/01/creart-beauty-services-android-app.png'
              ].map((String url) {
                return Card(
                  child: new GridTile(
                      child: new Image.network(url, fit: BoxFit.cover)),
                );
              }).toList()),
        ));
  }
}
