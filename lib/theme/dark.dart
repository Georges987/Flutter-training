import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme darkTextTheme = TextTheme(
  bodyLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
  bodyMedium: GoogleFonts.openSans(
      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
  bodySmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
  displayLarge: GoogleFonts.openSans(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
  displayMedium: GoogleFonts.openSans(
      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
  displaySmall: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  headlineLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white),
  headlineMedium: GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  headlineSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
  labelLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
  labelMedium: GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey),
  labelSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
  titleLarge: GoogleFonts.openSans(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
  titleMedium: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  titleSmall: GoogleFonts.openSans(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
);

ThemeData dark() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: darkTextTheme.titleMedium),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          return Colors.white;
        },
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: Colors.redAccent,
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.red,
      backgroundColor: Colors.black,
    ),
    cardColor: Colors.black38,
    primaryColor: Colors.red,
    visualDensity: VisualDensity.defaultDensityForPlatform(TargetPlatform.android),
    scaffoldBackgroundColor: Colors.black12,
    textTheme: darkTextTheme,
  );
}
