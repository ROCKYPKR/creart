import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Color firstColor = Colors.white;

  Color secondColor = Colors.blue[300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   elevation: 0,
      //   leading: Icon(Icons.arrow_back_ios),
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.only(right: 16),
      //       child: Icon(Icons.search),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 350.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [firstColor, secondColor],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 180,
                      child: CachedNetworkImage(
                     placeholder: (context, url) => new CircularProgressIndicator(),
                    imageUrl: 'https://i.ibb.co/8XkbGMS/creart-logo-png.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      //padding: const EdgeInsets.only(right: 180, top: 20),
                      child: Text(
                        "About Us",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 800,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 12,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0)),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 20, bottom: 10),
                                  child: Text(
                                    "CreArt Solutions",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, top: 10, right: 20),
                                  child: Text(
                                    "CreArt is not just an organization but a hybrid composition of Creativity, REsearch and ART. Innovation and dynamism are the two most important resolutions of CreArt. CreArt is focused on rigorous development and comprehensive quality. CreArt is dedicated towards the perfection in all field of which it works. Professionalism is the main ingredient of CreArt. We strongly believe that every piece of design can be work of art and nothing gives more pleasure than making something out of nothing. Chief dictum of CreArt is to provide professional, quality, innovative and accessible services in every possible form.",
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: _launchURLfb,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: CachedNetworkImage(
                     placeholder: (context, url) => new CircularProgressIndicator(),
                    imageUrl:                         "http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19751.png"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child: Card(
                                          elevation: 15,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          child: CachedNetworkImage(
                     placeholder: (context, url) => new CircularProgressIndicator(),
                    imageUrl:                     "http://pluspng.com/img-png/instagram-vector-png--626.jpg",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: _launchURLtwit,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: CachedNetworkImage(
                     placeholder: (context, url) => new CircularProgressIndicator(),
                    imageUrl:                         "http://pluspng.com/img-png/twitter-logo-png-twitter-logo-vector-png-clipart-library-518.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: _launchURLlink,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: CachedNetworkImage(
                     placeholder: (context, url) => new CircularProgressIndicator(),
                    imageUrl:                         "https://pngimg.com/uploads/linkedIn/linkedIn_PNG9.png"),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: _launchURLyou,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Card(
                                            elevation: 15,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            child: CachedNetworkImage(
                     placeholder: (context, url) => new CircularProgressIndicator(),
                    imageUrl:                         "http://pngimg.com/uploads/youtube/youtube_PNG15.png"),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width * .5, size.height - 30.0);
    var firstControlpoint = Offset(size.width * 0.25, size.height - 50.0);
    path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 80.0);
    var secondControlPoint = Offset(size.width * .75, size.height - 10);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

// Facebook Launch
_launchURLfb() async {
  const url = 'https://www.facebook.com/CreArtSolutions';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//Instagram Launch

_launchURLtwit() async {
  const url = 'https://twitter.com/creartsolutions';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//LinkedDin Launch

_launchURLlink() async {
  const url = 'https://www.linkedin.com/company/creartsolutions';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//Youtube Launch

_launchURLyou() async {
  const url = 'https://www.youtube.com/channel/UCytpDAUgKiMSL0iSDlctqTw';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
