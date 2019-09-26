import 'package:flutter/material.dart';
import 'package:motor_quick_quote/tab_view/vehicle_details/mqq_vehicle_quote_results.dart';

class MQQVehicleSearchResultsPage extends StatefulWidget {
  @override
  _MQQVehicleSearchResultsPageState createState() => _MQQVehicleSearchResultsPageState();
}

class _MQQVehicleSearchResultsPageState extends State<MQQVehicleSearchResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(child: Center(child: MaterialButton(child: Text("This is the right vehicle!"), onPressed: () { _newQuotePressed(); },))));
  }
    
  void _newQuotePressed() {
    print("Accept vehicle button pressed");
      Navigator.push(context, new MaterialPageRoute(
            builder: (context) => MQQVehicleQuoteResults()
          ));
  }
}