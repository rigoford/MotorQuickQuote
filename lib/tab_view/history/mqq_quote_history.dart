import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/styling.dart';

class MQQQuoteHistoryPage extends StatefulWidget {
  @override
  _MQQQuoteHistoryPageState createState() => _MQQQuoteHistoryPageState();
}

class _MQQQuoteHistoryPageState extends State<MQQQuoteHistoryPage> {
  @override
  Widget build(BuildContext context) {

     final makeListTile = ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      
      title: Text(
        "Quote:   10/08/2019",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Icon(Icons.linear_scale, color: Colors.yellowAccent),
          Text("£250", style: TextStyle(color: Colors.white))
        ],
      ),
      trailing:
          Icon(Icons.keyboard_arrow_right, color: Styling.primaryDark, size: 30.0));


    final makeCard = Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Styling.secondary200),
        child: makeListTile,
      ),
    );


      return Container(
      margin: EdgeInsets.only(top: 10),
      child:  Container(child:  Container(
          padding: EdgeInsets.all(16.0),
          child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return makeCard;
          },
        ),
      )));

  }
}