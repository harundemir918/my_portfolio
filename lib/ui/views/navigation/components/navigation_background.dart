/*
Author: Harun Demir
Date: 29.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/base/base_controller.dart';

class NavigationBackground extends StatefulWidget {
  const NavigationBackground({super.key});

  @override
  State<NavigationBackground> createState() => _NavigationBackgroundState();
}

class _NavigationBackgroundState extends State<NavigationBackground> {
  @override
  void initState() {
    BaseController.navigationController.initBackgroundGif(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      const HtmlElementView(viewType: "background");
}
