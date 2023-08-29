// import 'dart:ui';
import 'package:flutter/material.dart';

class AppTheme {
  // primary color
  static const Color primaryColor = Color(0xFF48CAE4);
  static const Color secondaryColor = Color(0xFFDDDDDD);

  // secondary color
  static const Color blackColor = Color(0xFF000000);
  static const Color grayColor = Color(0xFFBDBDBD);
}

// default gilroy font
class MainTextStyle {

  static TextStyle gilroyTextStyle({Color? color, double? fontSize, FontWeight? fontsWeight}) {
    return TextStyle(
      fontFamily: "Gilroy",
      color: color,
      fontSize: fontSize,
      fontWeight: fontsWeight,
    );
  }
}

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}