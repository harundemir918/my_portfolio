import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;
import 'package:url_strategy/url_strategy.dart';

import 'core/constants/constants.dart';
import 'core/constants/theme_constants.dart';
import 'core/controllers/navigation/navigation_controller.dart';
import 'ui/views/navigation/navigation_view.dart' deferred as navigation;

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const CustomMaterialApp();
}

class CustomMaterialApp extends StatefulWidget {
  const CustomMaterialApp({Key? key}) : super(key: key);

  @override
  State<CustomMaterialApp> createState() => _CustomMaterialAppState();
}

class _CustomMaterialAppState extends State<CustomMaterialApp> {
  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
          navigation.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              builder: (context, child) =>
                  responsive_framework.ResponsiveBreakpoints.builder(
                child: child!,
                breakpoints: [
                  responsive_framework.Breakpoint(
                    start: appMinWidth,
                    end: mobileLargeMinWidth,
                    name: responsive_framework.MOBILE,
                  ),
                  responsive_framework.Breakpoint(
                    start: mobileLargeMinWidth + 1,
                    end: tabletMinWidth,
                    name: responsive_framework.PHONE,
                  ),
                  responsive_framework.Breakpoint(
                    start: tabletMinWidth + 1,
                    end: desktopMinWidth,
                    name: responsive_framework.TABLET,
                  ),
                  responsive_framework.Breakpoint(
                    start: desktopMinWidth + 1,
                    end: double.infinity,
                    name: responsive_framework.DESKTOP,
                  ),
                ],
              ),
              title: appName,
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: ThemeMode.dark,
              home: navigation.NavigationView(),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
