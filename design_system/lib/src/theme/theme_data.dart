import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData myTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    backgroundColor: const Color(0xFFF2F2F2),
    primaryColor: const Color.fromARGB(255, 255, 255, 255),
    colorScheme: const ColorScheme.light(
      primary: Color.fromARGB(255, 251, 96, 49),
      secondary: Color(0xFFA2A3A6),
      tertiary: Colors.black,
    ),
    textTheme: GoogleFonts.robotoTextTheme(
      const TextTheme(
        headline5: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        headline4: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        subtitle2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    ),
  );
}
