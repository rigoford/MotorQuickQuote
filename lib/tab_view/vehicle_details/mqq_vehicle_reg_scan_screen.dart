// A screen that allows users to take a picture using a given camera.
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';
import 'package:motor_quick_quote/tab_view/vehicle_details/mqq_vehicle_search_results.dart';

class MQQVehicleRegScanScreen extends StatefulWidget {
  final CameraDescription camera;

  const MQQVehicleRegScanScreen({
    Key key,
    @required this.camera,
  }) : super(key: key);

  @override
  MQQVehicleRegScanScreenState createState() => MQQVehicleRegScanScreenState();
}

class MQQVehicleRegScanScreenState extends State<MQQVehicleRegScanScreen> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrandedAppBar(),
      // Wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner
      // until the controller has finished initializing.
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Styling.white,
        child: Icon(
          Icons.camera_alt,
          color: Styling.primaryDark,
        ),
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            Navigator.push(context, new MaterialPageRoute(builder: (context) => MQQVehicleSearchResultsPage()));
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
      ),
    );
  }
}
