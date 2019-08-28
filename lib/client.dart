import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Client extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text("Our Clients"),
        ),
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
                  "https://creart.in/wp-content/uploads/2018/08/grandlegacy.png",
                  "https://creart.in/wp-content/uploads/2018/08/fifth.png"),

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
                  "https://vignette.wikia.nocookie.net/logopedia/images/e/e7/ABP_Asmita.jpg/revision/latest?cb=20171220151145",
                  "https://english.cdn.zeenews.com/sites/default/files/2018/02/12/659886-zeenews2.png"),
              ClientBox(
                  "https://educationiconnect.com/wp-content/uploads/2018/03/Calorx-Teacher%E2%80%99s-University-Fee-Structure.jpg",
                  "https://creart.in/wp-content/uploads/2018/09/Brokersnet.png"),
              ClientBox(
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-23-100-1.jpg",
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-39-100-1.jpg"),
              ClientBox(
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-2-100-1.jpg",
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-45-100-1.jpg"),

              ClientBox(
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-47-100.jpg",
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-16-100.jpg"),
              ClientBox(
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-14-100.jpg",
                  "https://creart.in/wp-content/uploads/2017/11/Artboard-7-100-1.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ClientBox(var link1, var link2) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
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
              child: CachedNetworkImage(imageUrl: link1,
                placeholder: (context, url) => new CircularProgressIndicator(),
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
              child: CachedNetworkImage(
                placeholder: (context, url) => new CircularProgressIndicator(),
                imageUrl: link2,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
