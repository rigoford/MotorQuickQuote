import 'package:flutter/material.dart';

class Styling {
  static const primaryLight = const Color(0xff40a4f4);
  static const primaryDark = const Color(0xff0a3282);
  static const primaryDarker = const Color(0xff212a36);
  static const secondary100 = const Color(0xfff6f6f3);
  static const secondary200 = const Color(0xfff0f0eb);
  static const secondary300 = const Color(0xffe7e7e1);
  static const secondary350 = const Color(0xffdddddd);
  static const secondary400 = const Color(0xffadadad);
  static const secondary600 = const Color(0xff2b2b2b);
  static const alpha100 = const Color(0xffffcb00);
  static const alpha200 = const Color(0xffffae00);
  static const alpha300 = const Color(0xffff9d00);
  static const alpha400 = const Color(0xffff6400);
  static const alpha500 = const Color(0xffff3b30);
  static const alpha600 = const Color(0xffff2323);
  static const beta100 = const Color(0xff92e147);
  static const beta200 = const Color(0xff16ca36);
  static const beta300 = const Color(0xff009f1c);
  static const white = const Color(0xffffffff);
  static const black = const Color(0xff000000);
  static const gamma100 = const Color(0xffa4ccea);
  static const cobalt = const Color(0xff2350a0);
  static const twilightBlue = const Color(0xff0a3283);
  static const secondary500 = const Color(0xff4f4f4f);
  static const lightBlue = const Color(0xffa4cceb);

  static double _controlSizeWidth = 375;
  static double _controlSizeHeight = 667;

  // fonts
  static const String testDriveFontFamily = "Facit";
  static const String fontAwesomeProFontFamily = "Font Awesome 5 Pro";
  static const String fontAwesomeProLightFontFamily = "Font Awesome 5 Pro Light";
  static const String fontAwesomeProSolidFontFamily = "Font Awesome 5 Pro Solid";

  static double getScaledFontSize(BuildContext context, double fontSize) {
    return fontSize * (MediaQuery.of(context).size.width / _controlSizeWidth);
  }

  static double getSizeScaledForWidth(BuildContext context, double size) {
    return size * (MediaQuery.of(context).size.width / _controlSizeWidth);
  }

    static double getSizeScaledForHeight(BuildContext context, double size) {
    return size * (MediaQuery.of(context).size.height / _controlSizeHeight);
  }


  static TextStyle getTestDrivePageHeaderTextStyle(BuildContext context) {
    return TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: getScaledFontSize(context, 16.0),
        fontFamily: testDriveFontFamily,
        letterSpacing: -0.3,
        color: Styling.secondary500);
  }

  static TextStyle getTestDrivePageExplinationTextStyle(BuildContext context) {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: getScaledFontSize(context, 18.0),
        fontFamily: testDriveFontFamily,
        letterSpacing: -0.3,
        color: Styling.secondary500);
  }
}