import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: textTheme(),
      appBarTheme: appBarTheme(),
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20)));
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10);
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(fontSize: 18, color: Color(0XFF8B8B8B)),
    centerTitle: true,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}
