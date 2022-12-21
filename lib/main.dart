import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'core/constants/constants.dart';
import 'view/home/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: appMaxWidth,
        minWidth: appMinWidth,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(appMinWidth, name: MOBILE),
          ResponsiveBreakpoint.resize(mobileLargeMinWidth, name: PHONE),
          ResponsiveBreakpoint.resize(tabletMinWidth, name: TABLET),
          ResponsiveBreakpoint.resize(desktopMinWidth, name: DESKTOP),
        ],
      ),
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
            primary: kPrimaryColor,
          ),
          fontFamily: "Poppins"),
      home: const HomeView(),
    );
  }
}
