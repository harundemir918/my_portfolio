/*
Author: Harun Demir
Date: 29.06.2023
*/

import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

import '../../../../core/base/base_controller.dart';

class NavigationBackground extends StatefulWidget {
  const NavigationBackground({super.key});

  @override
  State<NavigationBackground> createState() => _NavigationBackgroundState();
}

class _NavigationBackgroundState extends State<NavigationBackground> {
  @override
  void initState() {
    BaseController.backgroundController.getBackgroundImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        child: PlatformWebViewWidget(
          PlatformWebViewWidgetCreationParams(
            controller:
                BaseController.backgroundController.platformWebViewController,
          ),
        ).build(context),
      );
}
