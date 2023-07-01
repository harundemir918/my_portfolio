/*
Author: Harun Demir
Date: 20.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final lightTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: kLightPrimaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: kLightBackgroundColor,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
);

final darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: kLightPrimaryColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: kWhiteColor),
    backgroundColor: kDarkBackgroundColor,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
);
