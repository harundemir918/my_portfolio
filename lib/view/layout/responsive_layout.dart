/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget mobileLarge;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    required this.mobileLarge,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= tabletMaxWidth) {
          return desktop;
        } else if (constraints.maxWidth >= mobileLargeMaxWidth) {
          return tablet;
        } else if (constraints.maxWidth >= mobileMaxWidth) {
          return mobileLarge;
        } else {
          return mobile;
        }
      },
    );
  }
}
