import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';

import 'mqq_assumptions.dart';

class MQQDriverLicenceResultsPage extends StatefulWidget {
  @override
  _MQQDriverLicenceResultsPageState createState() => _MQQDriverLicenceResultsPageState();
}

class _MQQDriverLicenceResultsPageState extends State<MQQDriverLicenceResultsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BrandedAppBar(),
      body: Container(
        color: Styling.secondary100,
        child: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      "Driving License Details",
                      textAlign: TextAlign.center,
                      style: Styling.getTestDrivePageHeaderTextStyle(context),
                    ))),
            ListTile(
              title: Text('Name', style: titleStyle(),),
              subtitle: Text('MORGAN', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('First Name', style: titleStyle(),),
              subtitle: Text('SARAH MEREDYTH', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Date and place of birth', style: titleStyle(),),
              subtitle: Text('11.03.1976 UNITED KINGDOM', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Date of issue', style: titleStyle(),),
              subtitle: Text('19.01.2013', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Date of expiry', style: titleStyle(),),
              subtitle: Text('18.01.2023', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Issued by', style: titleStyle(),),
              subtitle: Text('DVLA', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Licence number', style: titleStyle(),),
              subtitle: Text('MORGA753116SM9IL 35', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Address', style: titleStyle(),),
              subtitle: Text('122 BURNS CRESCENT EDINGURGH EH1 9GP', style: subtitleStyle(),),
            ),
            Container(
              child: new Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 45.0, 10.0, 0.0),
                  child: SizedBox(
                    height: 40.0,
                    child: new RaisedButton(
                      elevation: 5.0,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                      child: new Text('Confirm', style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                      onPressed: _confirm,
                    ),
                  )),
            ),
            Container(
              child: new Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                  child: SizedBox(
                    height: 40.0,
                    child: new RaisedButton(
                      elevation: 5.0,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.blue,
                      child: new Text('Edit', style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                    ),
                  )),
            ),
          ],
        ),
      )
    );
  }

  // Confirm
  void _confirm() async {
    try {
      Navigator.push(context, new MaterialPageRoute(
          builder: (context) => MQQAssumptionsPage()
      ));
    } catch (e) {
      print('Error: $e');
    }
  }

  TextStyle titleStyle() {
    return TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,);
  }

  TextStyle subtitleStyle() {
    return TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 18.0,);
  }
}
