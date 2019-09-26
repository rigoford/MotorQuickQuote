import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/branded_app_bar.dart';
import 'package:motor_quick_quote/common/styling.dart';
import 'package:motor_quick_quote/tab_view/history/mqq_quote_history.dart';
import 'package:motor_quick_quote/tab_view/profile/mqq_profile.dart';
import 'package:motor_quick_quote/tab_view/vehicle_details/mqq_new_vehicle_quote.dart';

class MQQMainTabViewPage extends StatefulWidget {
  @override
  _MQQMainTabViewPageState createState() => _MQQMainTabViewPageState();
}

class _MQQMainTabViewPageState extends State<MQQMainTabViewPage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  final IconData _quoteHistoryIconData = IconData(0xf5a0, fontFamily: Styling.fontAwesomeProLightFontFamily);
  final IconData _vehicleDetailsIconData = IconData(0xf018, fontFamily: Styling.fontAwesomeProLightFontFamily);
  final IconData _profileIconData = IconData(0xf132, fontFamily: Styling.fontAwesomeProLightFontFamily);
  
  _MQQMainTabViewPageState(){
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BrandedAppBar(),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
           MQQProfilePage(),
           MQQNewVehicleQuote(),
           MQQQuoteHistoryPage()
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Styling.primaryDark,
        height: 50.0 + ((MediaQuery.of(context).padding.bottom > 0.0) ? 33.0 : 0.00),
        child: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.all(0.0),
            labelStyle: TextStyle(fontSize: Styling.getScaledFontSize(context, 10.0)),
            tabs: [
              Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                  child: Column(children: <Widget>[
                    Icon(_profileIconData, size: Styling.getScaledFontSize(context, 20.0)),
                    Container(margin: EdgeInsets.only(top: 5.0)),
                    Text("Profile", style: TextStyle(fontSize: Styling.getScaledFontSize(context, 10.0)))
                  ])),
              Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                  child: Column(children: <Widget>[
                    Icon(_vehicleDetailsIconData, size: Styling.getScaledFontSize(context, 20.0)),
                    Container(margin: EdgeInsets.only(top: 5.0)),
                    Text(
                       "New Vehicle Quote",
                      style: TextStyle(fontSize: Styling.getScaledFontSize(context, 10.0)),
                    ),
                    
                  ])),
                    Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
                  child: Column(children: <Widget>[
                    Icon(_quoteHistoryIconData, size: Styling.getScaledFontSize(context, 20.0)),
                    Container(margin: EdgeInsets.only(top: 5.0)),
                    Text(
                       "Quote History",
                      style: TextStyle(fontSize: Styling.getScaledFontSize(context, 10.0)),
                    ),
                    
                  ]))
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Styling.primaryLight,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(0.0),
            indicatorColor: Colors.transparent),
      ),
    );
  }
}