import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/styling.dart';



class MQQProfilePage extends StatefulWidget {
  @override
  _MQQProfilePageState createState() => _MQQProfilePageState();
}

class _MQQProfilePageState extends State<MQQProfilePage> {
  @override
  final String _fullName = "Sarah Meredyth";
  final String _bio =
      "\"Good morning Sarah, Here's your profile:\"";
  final String _cars = "12";
  final String _posts = "24";
  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 2.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cover.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/dave.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: Styling.fontAwesomeProFontFamily,
      color: Styling.primaryLight,
      fontSize: Styling.getScaledFontSize(context,  28.0),
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: Styling.fontAwesomeProFontFamily,
      color: Colors.black,
      fontSize: Styling.getScaledFontSize(context, 16.0),
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: Styling.getScaledFontSize(context, 24.0),
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Cars Scanned", _cars),
          _buildStatItem("Quote History", _posts),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: Styling.fontAwesomeProFontFamily,
      fontWeight: FontWeight.w400,//try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: Styling.getScaledFontSize(context, 16.0),
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildAssumptions(BuildContext context, Size screenSize) {
    return
      Container(
        height: screenSize.height/4,
      child: ListView(
          children: <Widget>[
            Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                margin: EdgeInsets.all(20),
                child: SizedBox(
                    width: screenSize.width * .8,
                    child: Text(
                      "Driving License Details",
                      textAlign: TextAlign.center,
                      style: Styling.getTestDrivePageHeaderTextStyle(context),
                    ))),
            ListTile(
              title: Text('Name', style: titleStyle(),),
              subtitle: Text('MORGAN', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('First Name', style: titleStyle(),),
              subtitle: Text('SARAH MEREDYTH', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Date and place of birth', style: titleStyle(),),
              subtitle: Text('11.03.1976 UNITED KINGDOM', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Date of issue', style: titleStyle(),),
              subtitle: Text('19.01.2013', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Date of expiry', style: titleStyle(),),
              subtitle: Text('18.01.2023', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Issued by', style: titleStyle(),),
              subtitle: Text('DVLA', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Licence number', style: titleStyle(),),
              subtitle: Text('MORGA753116SM9IL 35', style: subtitleStyle(),),
            ),
            ListTile(
              title: Text('Address', style: titleStyle(),),
              subtitle: Text('122 BURNS CRESCENT EDINGURGH EH1 9GP', style: subtitleStyle(),),
            ),
          ],
        )
      );
  }

  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => print("Edited"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Styling.primaryDark,
                ),
                child: Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: InkWell(
              onTap: () => print("Delete Profile"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Delete Profile",
                      style: TextStyle(fontWeight: FontWeight.w600,
                          color: Styling.primaryDark),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildCoverImage(screenSize),
          Container(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 8.7),
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  _buildBio(context),
                  _buildSeparator(screenSize),
                  SizedBox(height: screenSize.height/20),
                  _buildAssumptions(context, screenSize),
                  SizedBox(height: screenSize.height/40),
                  _buildButtons(),

                ],
            ),
          ),
        ],
      ),
    );
  }
  TextStyle titleStyle() {
    return TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.normal,);
  }

  TextStyle subtitleStyle() {
    return TextStyle(color: Colors.black.withOpacity(1.0), fontWeight: FontWeight.normal, fontSize: 18.0,);
  }
}
