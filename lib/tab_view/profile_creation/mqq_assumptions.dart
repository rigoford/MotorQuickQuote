import 'package:flutter/material.dart';

import '../mqq_main_tab_view.dart';

class MQQAssumptionsPage extends StatefulWidget {
  @override
  _MQQAssumptionsPageState createState() => _MQQAssumptionsPageState();
}

class _MQQAssumptionsPageState extends State<MQQAssumptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(child: Center(child: MaterialButton(child: Text("Accept Assumptions"), onPressed: () { _acceptAssumptions(); },) )));
    
      }
    
      void _acceptAssumptions() {
        print("assumptions accepted");
            Navigator.push(context, new MaterialPageRoute(
            builder: (context) => MQQMainTabViewPage()
          ));
      }
}