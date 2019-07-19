import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PortFolio"),
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Card(
                    elevation: 12.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: new BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          "https://www.pixicart.com/images/graphic-design.png",
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Logo & Branding",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Card(
                    elevation: 12.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: new BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.network(
                            "https://www.sccpre.cat/mypng/full/152-1528122_mobile-app-development-android.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Mobile Apps",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Card(
                    elevation: 12.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: new BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          "http://alliedpropertygroup.net/wp-content/uploads/2016/04/Community-Websites-PNG.png",
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Websites",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Card(
                    elevation: 12.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: new BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.network(
                            "https://www.coussins.co.uk/wp-content/uploads/2018/05/social-media-icon-collage.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          "Social Media",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Card(
                    elevation: 12.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: new BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          "https://learn.libraryjournal.com/wp-content/uploads/2018/08/LJPD_OnlineCourse_ARVR_Logo-01.png",
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "AR / VR",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: Card(
                    elevation: 12.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: new BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Image.network(
                            "https://www.pngkey.com/png/detail/801-8019155_cinematic-hd-video-production-hd-production-video.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Text(
                          "Photoshot & Video",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
