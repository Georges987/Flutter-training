import 'package:flutter/material.dart';
import 'package:training/theme/dark.dart';
import 'package:training/theme/light.dart';

class AppTheme {
  static TextTheme lightTxt = lightTextTheme;
  static TextTheme darkTxt = darkTextTheme;
  static ThemeData lightTheme = light();
  static ThemeData darkTheme = dark();
}