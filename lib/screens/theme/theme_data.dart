import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat Bold',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'Montserrat Bold'),
          backgroundColor: const Color.fromARGB(200, 226, 45, 208),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat Regular'),
            foregroundColor: const Color.fromARGB(255, 49, 49, 49)),
      ),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.pink,
          elevation: 4,
          shadowColor: Colors.black,
          titleTextStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )));
}
