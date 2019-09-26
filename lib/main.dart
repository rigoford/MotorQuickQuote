import 'package:flutter/material.dart';

import 'login/mqq_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Motor Quick Quote',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MQQLoginPage()
    );
  }
}

