import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10);
  return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 1,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme:
          TextTheme(headline6: TextStyle(color: Colors.grey, fontSize: 18)));
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}
