import 'package:creartfinal/carrears.dart';
import 'package:creartfinal/skill_list.dart';
import 'package:creartfinal/skills/contact.dart';
import 'package:creartfinal/skills/skill_arvr.dart';
import 'package:creartfinal/skills/skill_digital.dart';
import 'package:creartfinal/skills/skill_embedded.dart';
import 'package:creartfinal/skills/skillai.dart';
import 'package:creartfinal/skills/skillux.dart';
import 'package:creartfinal/skills/skillweb.dart';
import 'package:creartfinal/skills/skill.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'skills/skill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:share/share.dart';

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  final List images = [
    'https://creart.in/wp-content/uploads/2019/07/creart-website-shopify.png',
    'https://creart.in/wp-content/uploads/2018/11/creart-website-hero-banner-05-1.png',
    'https://creart.in/wp-content/uploads/2017/07/02.png',
    'https://creart.in/wp-content/uploads/2016/04/2.png',
    'https://creart.in/wp-content/uploads/2017/07/03.png',
    'https://creart.in/wp-content/uploads/2017/07/04.png',
    'https://creart.in/wp-content/uploads/2016/04/3.png',
    'https://creart.in/wp-content/uploads/2017/07/01.png',
    'https://i.ibb.co/PzfY07D/flutter.jpg',
    'https://creart.in/wp-content/uploads/2019/07/creart-website-shopifyv2.png'
  ];

  // String currentProfilePic =
  //     "https://media.licdn.com/dms/image/C4E0BAQGa5pf4mEQxmA/company-logo_200_200/0?e=2159024400&v=beta&t=PTLC9ZBptBuySmsUKnS5seIMhVVWEDXIOraWcJ7P85A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: new Text("hello@creart.in"),
              accountName: new Text("CreArt Solutions"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://media.licdn.com/dms/image/C4E0BAQGa5pf4mEQxmA/company-logo_200_200/0?e=2159024400&v=beta&t=PTLC9ZBptBuySmsUKnS5seIMhVVWEDXIOraWcJ7P85A"),
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://miro.medium.com/max/1200/1*l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_phone,
                size: 28,
                color: Colors.blue,
              ),
              title: Text(
                'Contact',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // This line code will close drawer programatically....
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                size: 28,
                color: Colors.green,
              ),
              title: Text(
                'Enquiry',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // This line code will close drawer programatically....
                infoDialog(context);
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(
                Icons.chrome_reader_mode,
                size: 28,
                color: Colors.orangeAccent,
              ),
              title: Text(
                'Skills List',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // This line code will close drawer programatically....
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SkillList()));
              },
            ),
            Divider(
              height: 2.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                size: 28,
                color: Colors.blueGrey,
              ),
              title: Text(
                'Share',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // This line code will close drawer programatically....
                final RenderBox box = context.findRenderObject();
                Share.share("www.creart.in",
                    sharePositionOrigin:
                        box.localToGlobal(Offset.zero) & box.size);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 4.0,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontFamily: "Canterbury"),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: new Container(
              child: Column(
            children: <Widget>[
              new Swiper(
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return new CachedNetworkImage(
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    imageUrl: images[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: images.length,
                itemWidth: 600.0,
                itemHeight: 300.0,
                layout: SwiperLayout.TINDER,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 3, top: 10),
                child: Text(
                  "Skills",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SkillUx()));
                        },
                        child: Nikhil(
                            Colors.orangeAccent,
                            "UX/UI Design",
                            "Web & Mobile Apps UI \nDesign etc..",
                            "https://sisgain.com/service-images/ui-ux-side.png"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SkillWeb()));
                        },
                        child: Nikhil(
                            Colors.deepOrange,
                            "Web \nDevelopment",
                            "Responsive Websites,\n Web Apps etc..",
                            "https://www.sccpre.cat/png/big/89/890956_web-development-png.png"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Skill()));
                        },
                        child: Nikhil(
                            Colors.blueAccent,
                            "Mobile \nDevelopment",
                            "Responsive Android, Ios\n Apps etc..",
                            "https://qph.fs.quoracdn.net/main-qimg-41f07feaf213cffe7c74373cac01faa2"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SkillAi()));
                        },
                        child: Nikhil(
                            Colors.blue[300],
                            "AI / ML",
                            "Android & iOS Apps, Web Services,",
                            "https://i1.wp.com/www.devicebits.com/wp-content/uploads/2017/03/support-predict-icon.png"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SkillEmb()));
                        },
                        child: Nikhil(
                            Colors.yellow[600],
                            "Embedded \nSystem",
                            "Raspberry PI, Arduino, IOT, Helath Care Equipment,",
                            "http://gaianconsultants.com/img/icons/EmbeddedSystems/embedded-system-and-hardware-engineering.png"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SkillArVr()));
                        },
                        child: Nikhil(
                            Colors.pink[300],
                            "AR / VR",
                            "Augmented Reality & Virtual Reality",
                            "https://www.simulanis.com/img/VR.png"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SkillDigital()));
                        },
                        child: Nikhil(
                            Colors.blueGrey,
                            "Digital & Offline\nMarketting",
                            "SMM, SEO, SMO,",
                            "https://www.6degreesit.com/wp-content/uploads/2019/02/Social-Media-Marketing.png"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 3, top: 5),
                child: Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 370,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.pink[200],
                    child: Column(
                      children: <Widget>[
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 230, top: 8),
                        //   child: RaisedButton(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(10.0)),
                        //     color: Colors.white,
                        //     onPressed: () {
                        //       Navigator.push(context, MaterialPageRoute(
                        //         builder: (context) => FoldingCellSimpleDemo()
                        //       ));
                        //     },
                        //     child: Text(
                        //       "CONTACT",
                        //       style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.bold),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Contact()));
                            },
                            child: Container(
                                height: 140,
                                width: 300,
                                child: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      new CircularProgressIndicator(),
                                  imageUrl:
                                      "http://www.qsekinternational.com/images/publicLimitedCompany.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    height: 140,
                    child: Card(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: ScaleAnimatedTextKit(
                            onTap: () {
                              print("Tap Event");
                            },
                            text: [
                              "Graphic : 1235",
                              " Project : 456",
                              " Clients : 235"
                            ],
                            textStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 50.0,
                                fontFamily: "Canterbury"),
                            textAlign: TextAlign.start,
                            alignment: AlignmentDirectional
                                .topStart // or Alignment.topLeft
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

Widget Nikhil(var color, var tittle, var desc, var imgurl) {
  return Container(
    height: 230,
    width: 135,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: color,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 2, top: 20, right: 2),
            child: Text(
              tittle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 13),
            child: Text(
              desc,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: CachedNetworkImage(
              imageUrl: imgurl,
              placeholder: (context, url) => new CircularProgressIndicator(),
            ),
          )
        ],
      ),
    ),
  );
}
