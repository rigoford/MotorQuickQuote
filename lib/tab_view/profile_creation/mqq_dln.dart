import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'mqq_dln_scan_screen.dart';

class MQQDriverLicenceScan extends StatefulWidget {
  @override
  _MQQDriverLicenceScanState createState() => _MQQDriverLicenceScanState();
}

class _MQQDriverLicenceScanState extends State<MQQDriverLicenceScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
                child: MaterialButton(
      child: Text("Driver licence scanned"),
      onPressed: () {
        _scanDriverLicence();
      },
    ))));
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
