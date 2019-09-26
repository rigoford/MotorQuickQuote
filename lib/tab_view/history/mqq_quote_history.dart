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
      
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 3.0),
      leading: Container(
          padding: EdgeInsets.only(right: 12.0, top: 10),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Styling.primaryDarker))),
          child: (Column(children: <Widget>[
            Text("BX52 PMV",style: TextStyle(color: Styling.primaryDarker, fontWeight: FontWeight.bold)), 
            Text("Ford Ka",style: TextStyle(color: Styling.primaryDarker))
            ] )),
        ),
      title: Text(
        "10/08/2019",
        style: TextStyle(color: Styling.primaryDarker),
      ),

      subtitle: Row(
        children: <Widget>[
          Icon(Icons.linear_scale, color: Styling.primaryDark),
          Text("  £250", style: TextStyle(color: Styling.primaryDarker))
        ],
      ),
      trailing:
          Icon(Icons.keyboard_arrow_right, color: Styling.primaryDark, size: 30.0));


    final makeCard = Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Styling.white),
        child: makeListTile,
      ),
    );


      return Container(
      color: Styling.secondary100,
      child:  Container(child:  Container(
          padding: EdgeInsets.only(top:10, left: 10, right: 10),
          child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return makeCard;
          },
        ),
      )));

  }
}