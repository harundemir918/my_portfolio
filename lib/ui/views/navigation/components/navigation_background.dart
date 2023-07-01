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
  final PlatformWebViewController _controller = PlatformWebViewController(
    const PlatformWebViewControllerCreationParams(),
  )..loadRequest(
      LoadRequestParams(
        uri: Uri.parse(BaseController.themeController.backgroundImage.value),
      ),
    );

  @override
  Widget build(BuildContext context) => PlatformWebViewWidget(
        PlatformWebViewWidgetCreationParams(controller: _controller),
      ).build(context);
}
