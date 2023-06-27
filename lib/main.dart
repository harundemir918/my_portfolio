import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;
import 'package:url_strategy/url_strategy.dart';

import 'core/constants/constants.dart';
import 'core/controllers/home/home_controller.dart';
import 'ui/views/home/home_view.dart' deferred as home;

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(HomeController());
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
          home.loadLibrary(),
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
              theme: ThemeData(
                colorScheme: const ColorScheme.light().copyWith(
                  primary: kPrimaryColor,
                ),
                textTheme: GoogleFonts.poppinsTextTheme(),
                scaffoldBackgroundColor: kWhiteColor,
              ),
              home: home.HomeView(),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
