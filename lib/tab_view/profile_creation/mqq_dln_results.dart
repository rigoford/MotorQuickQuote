import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';

import 'mqq_assumptions.dart';

class MQQDriverLicenceResultsPage extends StatefulWidget {
  @override
  _MQQDriverLicenceResultsPageState createState() => _MQQDriverLicenceResultsPageState();
}

class _MQQDriverLicenceResultsPageState extends State<MQQDriverLicenceResultsPage> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BrandedAppBar(),
      body: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Name', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('SMITH', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('First Name', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('ALICE BARBARA', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('Date and place of birth', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('01.04.1984 WALES', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('Date of issue', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('04.05.2012', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('Date of expiry', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('03.05.2022', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('Issued by', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('DVLA', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('Licence number', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('SMIT9804014AB5TV 03', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
        ),
        ListTile(
          title: Text('Address', style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,),),
          subtitle: Text('TY GWYN, 32 FAIRWATER ROAD, CARDIFF, CF5 2LE', style: TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 24.0,),),
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
    ),);
  }
}
