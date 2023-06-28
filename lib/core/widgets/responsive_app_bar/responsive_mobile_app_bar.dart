/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../constants/constants.dart';
import 'responsive_app_bar_drawer_button.dart';

class ResponsiveMobileAppBar extends StatelessWidget {
  const ResponsiveMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => AppBar(
          title: BaseController.navigationController.pageIndex.value != 0
              ? const Text(appName)
              : null,
          actions: const [
            ResponsiveAppBarDrawerButton(),
          ],
        ),
      );
}
