/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../constants/constants.dart';
import '../../utils/size_utils.dart';
import 'responsive_app_bar_drawer_button.dart';
import 'responsive_app_bar_title.dart';
import 'theme_switcher/theme_switcher.dart';

class ResponsiveMobileAppBar extends StatelessWidget {
  const ResponsiveMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => Container(
          width: SizeUtils.getWidth(context),
          height: kToolbarHeight,
          decoration: BoxDecoration(
            color: BaseController.themeController.isDark.value
                ? kDarkBackgroundColor.withOpacity(0.8)
                : kLightBackgroundColor.withOpacity(0.8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (BaseController.navigationController.pageIndex.value != 0)
                const ResponsiveAppBarTitle()
              else
                const SizedBox.shrink(),
              const Row(
                children: [
                  ThemeSwitcher(),
                  ResponsiveAppBarDrawerButton(),
                ],
              ),
            ],
          ),
        ),
      );
  // Widget build(BuildContext context) => Obx(
  //       () => AppBar(
  //         title: BaseController.navigationController.pageIndex.value != 0
  //             ? const Text(appName)
  //             : null,
  //         actions: const [
  //           ThemeSwitcher(),
  //           ResponsiveAppBarDrawerButton(),
  //         ],
  //       ),
  //     );
}
