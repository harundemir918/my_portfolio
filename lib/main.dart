import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;
import 'package:url_strategy/url_strategy.dart';

import 'core/constants/constants.dart';
import 'view/home/home_view.dart' deferred as home;
import 'view/widgets/custom_circular_loading_indicator.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomMaterialApp();
  }
}

class CustomMaterialApp extends StatefulWidget {
  const CustomMaterialApp({Key? key}) : super(key: key);

  @override
  State<CustomMaterialApp> createState() => _CustomMaterialAppState();
}

class _CustomMaterialAppState extends State<CustomMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        responsive_framework.loadLibrary(),
        home.loadLibrary(),
      ]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            builder: (context, child) =>
                responsive_framework.ResponsiveWrapper.builder(
              child,
              maxWidth: appMaxWidth,
              minWidth: appMinWidth,
              defaultScale: true,
              breakpoints: [
                responsive_framework.ResponsiveBreakpoint.resize(
                  appMinWidth,
                  name: responsive_framework.MOBILE,
                ),
                responsive_framework.ResponsiveBreakpoint.resize(
                  mobileLargeMinWidth,
                  name: responsive_framework.PHONE,
                ),
                responsive_framework.ResponsiveBreakpoint.resize(
                  tabletMinWidth,
                  name: responsive_framework.TABLET,
                ),
                responsive_framework.ResponsiveBreakpoint.resize(
                  desktopMinWidth,
                  name: responsive_framework.DESKTOP,
                ),
              ],
            ),
            title: appName,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: const ColorScheme.light().copyWith(
                primary: kPrimaryColor,
              ),
              fontFamily: "Poppins",
              scaffoldBackgroundColor: kWhiteColor,
            ),
            home: home.HomeView(),
          );
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
