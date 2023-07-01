import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;
import 'package:url_strategy/url_strategy.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

import 'core/base/base_controller.dart';
import 'core/constants/constants.dart';
import 'core/constants/theme_constants.dart';
import 'core/controllers/color/color_controller.dart';
import 'core/controllers/navigation/navigation_controller.dart';
import 'core/controllers/theme/theme_controller.dart';
import 'ui/views/navigation/navigation_view.dart' deferred as navigation;

void main() {
  WebViewPlatform.instance = WebWebViewPlatform();
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  Get
    ..put(NavigationController())
    ..put(ColorController())
    ..put(ThemeController());
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
          navigation.loadLibrary(),
          responsive_framework.loadLibrary(),
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
              themeMode: BaseController.themeController.theme.value,
              home: navigation.NavigationView(),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
