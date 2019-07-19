import 'package:flutter/material.dart';

class Client extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Clients"),
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120, top: 5, bottom: 5),
                child: Text(
                  "• International Clients",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
              ),
              ClientBox(
                  Colors.white,
                  Colors.white,
                  "http://grandlegacyhotel.com/wp-content/uploads/2016/03/Grand-Legacy-logo-pantone-purple2.png",
                  "http://grandlegacyhotel.com/wp-content/uploads/2016/03/Grand-Legacy-logo-pantone-purple2.png"),
              ClientBox(
                  Colors.white,
                  Colors.white,
                  "http://grandlegacyhotel.com/wp-content/uploads/2016/03/Grand-Legacy-logo-pantone-purple2.png",
                  "http://grandlegacyhotel.com/wp-content/uploads/2016/03/Grand-Legacy-logo-pantone-purple2.png"),
              Padding(
                padding: const EdgeInsets.only(right: 170, top: 5, bottom: 5),
                child: Text(
                  "• National Clients",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
              ),
              // National CLinets
              ClientBox(
                  Colors.white,
                  Colors.white,
                  "https://vignette.wikia.nocookie.net/logopedia/images/e/e7/ABP_Asmita.jpg/revision/latest?cb=20171220151145",
                  "https://english.cdn.zeenews.com/sites/default/files/2018/02/12/659886-zeenews2.png"),
              ClientBox(
                  Colors.white,
                  Colors.red,
                  "https://educationiconnect.com/wp-content/uploads/2018/03/Calorx-Teacher%E2%80%99s-University-Fee-Structure.jpg",
                  ""),
              ClientBox(Colors.orange, Colors.red, "", "")
            ],
          ),
        ),
      ),
    );
  }
}

Widget ClientBox(var color1, var color2, var link1, var link2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 24, top: 12, bottom: 12),
        child: Container(
          height: 170,
          width: 170,
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: new BorderSide(color: Colors.black, width: 2.0),
            ),
            color: color1,
            child: Image.network(
              link1,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 24, top: 12, bottom: 12),
        child: Container(
          height: 170,
          width: 170,
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: new BorderSide(color: Colors.black, width: 2.0),
            ),
            color: color2,
            child: Image.network(
              link2,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ],
  );
}
