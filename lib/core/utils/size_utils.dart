import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';

class SizeUtils {
  static double getWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double getDynamicWidth(BuildContext context, double value) =>
      MediaQuery.of(context).size.width * value;

  static double getDynamicHeight(BuildContext context, double value) =>
      MediaQuery.of(context).size.height * value;

  static bool isMobile(BuildContext context) =>
      getWidth(context) < mobileMaxWidth;

  static bool isTablet(BuildContext context) =>
      getWidth(context) >= mobileMaxWidth && getWidth(context) < tabletMaxWidth;

  static bool isDesktop(BuildContext context) =>
      getWidth(context) >= tabletMaxWidth;
}
