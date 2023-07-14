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
  appBarTheme: AppBarTheme(
    backgroundColor: kLightBackgroundColor.withOpacity(0.8),
    foregroundColor: kLightBackgroundColor.withOpacity(0.8),
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
);

final darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: kDarkPrimaryColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    actionsIconTheme: const IconThemeData(color: kWhiteColor),
    backgroundColor: kDarkBackgroundColor.withOpacity(0.6),
    foregroundColor: kDarkBackgroundColor.withOpacity(0.6),
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
);
