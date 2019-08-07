import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import './call.dart';
import 'call.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IndexState();
  }
}

class IndexState extends State<IndexPage> {
  /// create a channelController to retrieve text value
  final _channelController = TextEditingController();

  /// if channel textfield is validated to have error
  bool _validateError = false;

  @override
  void dispose() {
    // dispose input controller
    _channelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          title: Text("InterView"),
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
        body: Center(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: new BorderSide(color: Colors.black, width: 2.0),
                ),
                color: Colors.grey[300],
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[]),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: TextField(
                          controller: _channelController,
                          decoration: InputDecoration(
                              errorText: _validateError
                                  ? "Channel name is mandatory"
                                  : null,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 1)),
                              hintText: 'Channel name'),
                        ))
                      ]),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                onPressed: () => onJoin(),
                                child: Text("Join"),
                                color: Colors.blue[300],
                                textColor: Colors.white,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              )),
        ));
  }

  onJoin() async {
    // update input validation
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_channelController.text.isNotEmpty) {
      // await for camera and mic permissions before pushing video page
      await _handleCameraAndMic();
      // push video page with given channel name
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new CallPage(
                    channelName: _channelController.text,
                  )));
    }
  }

  _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
        [PermissionGroup.camera, PermissionGroup.microphone]);
  }
}
