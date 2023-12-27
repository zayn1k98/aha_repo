import 'package:flutter/material.dart';

class WebTheme {
  static const Color darkText = Colors.black;
  static const Color lightText = Colors.white;

  static ThemeData webTheme = ThemeData.light().copyWith(
    // useMaterial3: true,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontWeight: FontWeight.normal,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.normal,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.normal,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.normal,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.normal,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.normal,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        color: darkText,
      ),
    ),
  );
}
