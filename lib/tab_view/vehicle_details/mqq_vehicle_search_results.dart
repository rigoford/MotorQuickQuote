import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';
import 'package:motor_quick_quote/tab_view/vehicle_details/mqq_vehicle_quote_results.dart';

class MQQVehicleSearchResultsPage extends StatefulWidget {
  @override
  _MQQVehicleSearchResultsPageState createState() => _MQQVehicleSearchResultsPageState();
}

class _MQQVehicleSearchResultsPageState extends State<MQQVehicleSearchResultsPage> {

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
                        "DVLA Vehicle Details Confirmation",
                        textAlign: TextAlign.center,
                        style: Styling.getTestDrivePageHeaderTextStyle(context),
                      ))),
              ListTile(
                title: Text('Make', style: titleStyle(),),
                subtitle: Text('TOYOTA', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Model', style: titleStyle(),),
                subtitle: Text('COROLLA', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Registration', style: titleStyle(),),
                subtitle: Text('MT55 BAV', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Transmission', style: titleStyle(),),
                subtitle: Text('AUTOMATIC', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Engine size', style: titleStyle(),),
                subtitle: Text('1598', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Year', style: titleStyle(),),
                subtitle: Text('2005', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Trim', style: titleStyle(),),
                subtitle: Text('T3 COLOUR COLLECTION VVT-I', style: subtitleStyle(),),
              ),
              ListTile(
                title: Text('Value of the car', style: titleStyle(),),
              ),
              Container(
                child: new Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: new TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    decoration: new InputDecoration(
                      hintText: '£',
                    ),
                  ),
                ),
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
                        child: new Text('Confim', style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                        onPressed: _newQuotePressed,
                      ),
                    )),
              ),
            ],
          ),
        )
    );
  }

  void _newQuotePressed() {
    print("Accept vehicle button pressed");
    Navigator.push(context, new MaterialPageRoute(builder: (context) => MQQVehicleQuoteResults()));
  }

  TextStyle titleStyle() {
    return TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,);
  }

  TextStyle subtitleStyle() {
    return TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 18.0,);
  }
}
