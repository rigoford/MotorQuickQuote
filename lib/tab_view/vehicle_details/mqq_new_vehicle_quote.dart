import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/styling.dart';

import 'mqq_vehicle_reg_scan_screen.dart';

class MQQNewVehicleQuote extends StatefulWidget {
  @override
  _MQQNewVehicleQuoteState createState() => _MQQNewVehicleQuoteState();
}

class _MQQNewVehicleQuoteState extends State<MQQNewVehicleQuote> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Styling.secondary100,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      "New Vehicle Search",
                      textAlign: TextAlign.center,
                      style: Styling.getTestDrivePageHeaderTextStyle(context),
                    ))),
            Container(
                margin: EdgeInsets.only(bottom: 50),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Text(
                      "Click the button below to scan in a vehicle registration, we'll then do the rest to give a lightening fast quote!",
                      textAlign: TextAlign.center,
                      style: Styling.getTestDrivePageExplinationTextStyle(context),
                    ))),
            Center(
                child: FlatButton(
              color: Colors.white,
              shape: CircleBorder(),
              child: Stack(
                children: <Widget>[
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .7, child: Image.asset('assets/circle_graphic.png')),
                  Positioned(
                      left: MediaQuery.of(context).size.width * .28,
                      top: MediaQuery.of(context).size.width * .3,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * .8,
                          child: Text(
                            "Scan",
                            style: TextStyle(color: Styling.primaryDark, fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
              onPressed: () {
                _newQuotePressed();
              },
            )),
            Container(
              margin: EdgeInsets.only(top: 40),
              child:
            SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: Text(
                  "Just take a photo of the vehicle registration and you're good to go!",
                  textAlign: TextAlign.center,
                  style: Styling.getTestDrivePageExplinationTextStyle(context),
                ))),
          ],
        ));
  }

  void _newQuotePressed() {
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
            builder: (context) => MQQVehicleRegScanScreen(
                  camera: firstCamera,
                )));
  }
}
