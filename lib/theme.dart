import 'package:find_job/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum MyThemeKeys { LIGHT, DARK }

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    highlightColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kSecondaryColor,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.montserrat(
          fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
      displayMedium: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      labelMedium: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 16,
      ),
      headlineMedium: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      labelSmall: GoogleFonts.montserrat(
          color: kSecondaryColor, fontWeight: FontWeight.w500, fontSize: 15),
      headlineSmall: GoogleFonts.montserrat(
          color: kSecondaryColor, fontSize: 10, fontWeight: FontWeight.w700),
      displaySmall: GoogleFonts.montserrat(
          color: Colors.black, fontSize: 8, fontWeight: FontWeight.w700),
    ),
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return lightTheme;
      default:
        return lightTheme;
    }
  }
}
