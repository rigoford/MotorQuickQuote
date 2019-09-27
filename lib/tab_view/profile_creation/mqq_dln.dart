import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';

import 'mqq_dln_scan_screen.dart';

class MQQDriverLicenceScan extends StatefulWidget {
  @override
  _MQQDriverLicenceScanState createState() => _MQQDriverLicenceScanState();
}

class _MQQDriverLicenceScanState extends State<MQQDriverLicenceScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BrandedAppBar(),
        body: Container(
            color: Styling.secondary100,
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(20),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * .8,
                        child: Text(
                          "Set up your profile",
                          textAlign: TextAlign.center,
                          style: Styling.getTestDrivePageHeaderTextStyle(context),
                        ))),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * .9,
                        child: Text(
                          "Click the button below to scan your driving licence, we'll then do the rest set up your quote profile!",
                          textAlign: TextAlign.center,
                          style: Styling.getTestDrivePageExplinationTextStyle(context),
                        ))),
                Center(
                    child: FlatButton(
                  color: Colors.white,
                  highlightColor: Styling.secondary350,
                  shape: CircleBorder(),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * .7,
                              child: Image.asset('assets/licence_graphic.png'))),
                    ],
                  ),
                  onPressed: () {
                    _scanDriverLicence();
                  },
                )),
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * .9,
                        child: Text(
                          "OR",
                          textAlign: TextAlign.center,
                          style: Styling.getTestDrivePageExplinationTextStyle(context),
                        ))),
                Container(
                  
                    margin: EdgeInsets.only(top: 25),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                        height: 40.0,
                        child: new RaisedButton(
                            elevation: 5.0,
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                            color: Styling.primaryDark,
                            child: new Text('Manual Input', style: new TextStyle(fontSize: 20.0, color: Colors.white)), onPressed: () {},)))
              ],
            )));
  }

  void _scanDriverLicence() {
    showCameraScreen();
  }

  void showCameraScreen() async {
    // Obtain a list of the available cameras on the device.
    final cameras = await availableCameras();

    // Get a specific camera from the list of available cameras.
    final firstCamera = cameras.first;

    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => MQQDriverLicenceScanScreen(
                  camera: firstCamera,
                )));
  }
}
