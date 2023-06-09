import 'package:flutter/material.dart';

class AppConfig {
  static late double screenHeight;
  static late double screenWidth;
  late MediaQueryData _mediaQueryData;

  static Color primColor = Colors.green;
  static Color secondColor = Colors.green.shade200;
  static Color lightGrey = Colors.grey.shade600;

  static TextStyle appTitleStyle = TextStyle(
      color: AppConfig.primColor, fontSize: 42, fontWeight: FontWeight.w800);

  void init(context) {
    _mediaQueryData = MediaQuery.of(context);

    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
  }
}