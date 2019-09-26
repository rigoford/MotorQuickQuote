import 'package:flutter/material.dart';
import 'package:motor_quick_quote/tab_view/profile/mqq_assumptions.dart';

class MQQDriverLicenceScan extends StatefulWidget {
  @override
  _MQQDriverLicenceScanState createState() => _MQQDriverLicenceScanState();
}

class _MQQDriverLicenceScanState extends State<MQQDriverLicenceScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Container(child: Center(child: MaterialButton(child: Text("Driver licence scanned"), onPressed: () { _scanDriverLicence(); },) )));
      }
    
      void _scanDriverLicence() {        
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => MQQAssumptionsPage()
          ));}
}