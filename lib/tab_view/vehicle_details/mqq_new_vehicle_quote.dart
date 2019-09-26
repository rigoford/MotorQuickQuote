import 'package:flutter/material.dart';
import 'package:motor_quick_quote/tab_view/vehicle_details/mqq_vehicle_search_results.dart';

class MQQNewVehicleQuote extends StatefulWidget {
  @override
  _MQQNewVehicleQuoteState createState() => _MQQNewVehicleQuoteState();
}

class _MQQNewVehicleQuoteState extends State<MQQNewVehicleQuote> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: MaterialButton(child: Text("Scan Reg Number"), onPressed: () { _newQuotePressed(); },)));
  }
    
  void _newQuotePressed() {
    print("New Scan Button Pressed");
    Navigator.push(context, new MaterialPageRoute(
            builder: (context) => MQQVehicleSearchResultsPage()
          ));
    
  }
}