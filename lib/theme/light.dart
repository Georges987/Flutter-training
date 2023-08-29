import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme lightTextTheme = TextTheme(
  bodyLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black),
  bodyMedium: GoogleFonts.openSans(
      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
  bodySmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
  displayLarge: GoogleFonts.openSans(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
  displayMedium: GoogleFonts.openSans(
      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
  displaySmall: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  headlineLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
  headlineMedium: GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
  headlineSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
  labelLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
  labelMedium: GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey),
  labelSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
  titleLarge: GoogleFonts.openSans(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
  titleMedium: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  titleSmall: GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
);

ThemeData light() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: lightTextTheme.titleMedium),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          return Colors.black;
        },
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: Colors.redAccent,
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.green,
      backgroundColor: Colors.white,
    ),
    cardColor: Colors.white,
    primaryColor: Colors.red,
    visualDensity: VisualDensity.defaultDensityForPlatform(TargetPlatform.android),
    scaffoldBackgroundColor: Colors.white,
    textTheme: lightTextTheme,
  );
}