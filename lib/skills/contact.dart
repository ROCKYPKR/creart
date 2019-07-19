import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        leading: InkWell(
          onTap: (){   Navigator.pop(context);},
          child: Icon(Icons.arrow_back_ios)),
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Card(
                 shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: new BorderSide(color: Colors.white, width: 2.0),
            ),
                elevation: 8,
                child: WebView(
                  initialUrl: Uri.dataFromString(
                          '<html><body><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.7478616764133!2d72.55541011443287!3d23.03302822171828!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84f53ffdfcb5%3A0x14077a0ac6c67900!2sCreArt+Solution!5e0!3m2!1sen!2sin!4v1563447745960!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></body></html>',
                          mimeType: 'text/html')
                      .toString(),
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Card(
                 shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: new BorderSide(color: Colors.white, width: 2.0),
            ),
                elevation: 8,
                child: WebView(
                  initialUrl: Uri.dataFromString(
                          '<html><body><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3691.251941170223!2d73.17729131441975!3d22.30630954831483!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fc997374d7c69%3A0x6310268ff5d0f447!2sCreArt+Solutions!5e0!3m2!1sen!2sin!4v1563449310996!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></body></html>',
                          mimeType: 'text/html')
                      .toString(),
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
