import 'package:flutter/material.dart';



class ThemeClass {
  //LightTheme
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffffffff),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.purpleAccent, //switch color
      secondary: Colors.greenAccent, // grid color
      surface: Colors.green, // setting icon color
      onPrimary: Colors.purpleAccent, //message icon color
      onSecondary: Colors.grey,
    ),
  );

  //DarkTheme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff000000),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.orange, //switch color
      secondary: Colors.blueAccent, // grid icon color
      surface: Colors.redAccent, //setting icon color
      onPrimary: Colors.lightGreen, // message icon color
      onSecondary: Colors.white,
    ),
  );
}