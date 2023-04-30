import 'package:flutter/material.dart';

class App {
  static const Color kActiveCardColor = Color(0XFF1D1E33);
  static const Color kInactiveCardColor = Color(0XFF111328);
  static const Color kBottomContainerColor = Color(0XFFEB1555);
  static const double kBottomContainerHeight = 80.0;

  static TextStyle kLabelTextStyle = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
    color: Color(0xFF8D8E98),
  );

  static TextStyle kNumberTextStyle = const TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.w900,
  );

  static TextStyle kLargeButtonTextStyle = const TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle kTitleTextStyle = const TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle kResultTextStyle = const TextStyle(
    color: Color(0xFF24D876),
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle kBodyTextStyle = const TextStyle(
    fontSize: 22.0,
  );

  static TextStyle kBMITextStyle = const TextStyle(
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
  );
}
