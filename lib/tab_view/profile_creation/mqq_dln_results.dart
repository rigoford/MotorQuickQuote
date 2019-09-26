import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';

class MQQDriverLicenceResultsPage extends StatefulWidget {
  @override
  _MQQDriverLicenceResultsPageState createState() => _MQQDriverLicenceResultsPageState();
}

class _MQQDriverLicenceResultsPageState extends State<MQQDriverLicenceResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BrandedAppBar(),
        body: Container(
            color: Styling.secondary100,
            child: Center(
                child: ListView(
              padding: EdgeInsets.all(10),
              children: <Widget>[
                Card(
                    elevation: 3,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Title: "), Text("Mr.")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("First Name: "), Text("David")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("Surname: "), Text("Plunkett")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("D.O.B: "), Text("13/01/86")
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("DLN: "), Text("Mr.")
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ))));
  }
}
