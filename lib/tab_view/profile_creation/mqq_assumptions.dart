import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';

import '../mqq_main_tab_view.dart';

class MQQAssumptionsPage extends StatefulWidget {
  @override
  _MQQAssumptionsPageState createState() => _MQQAssumptionsPageState();
}

class _MQQAssumptionsPageState extends State<MQQAssumptionsPage> {

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
                        "Quote Assumptions",
                        textAlign: TextAlign.center,
                        style: Styling.getTestDrivePageHeaderTextStyle(context),
                      ))),
              ListTile(
                title: Text('Cover starts', style: titleStyle(),),
                subtitle: Text('Friday 27 September 2019', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Level of cover', style: titleStyle(),),
                subtitle: Text('COMPREHENSIVE', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Class of use', style: titleStyle(),),
                subtitle: Text('Domestic & commuting', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Voluntary excess', style: titleStyle(),),
                subtitle: Text('£150', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Annual milage', style: titleStyle(),),
                subtitle: Text('upto 10,000 miles', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Overnight location', style: titleStyle(),),
                subtitle: Text('Drivers postcode', style: subtitleStyle(),),
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
                        child: new Text('Accept', style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                        onPressed: _acceptAssumptions,
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

  void _acceptAssumptions() {
    print("assumptions accepted");
    Navigator.push(context, new MaterialPageRoute(
        builder: (context) => MQQMainTabViewPage()
    ));
  }

  TextStyle titleStyle() {
    return TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,);
  }

  TextStyle subtitleStyle() {
    return TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 18.0,);
  }
}