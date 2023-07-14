/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../constants/constants.dart';
import '../../utils/size_utils.dart';
import 'responsive_app_bar_actions_item.dart';
import 'responsive_app_bar_title.dart';
import 'theme_switcher/theme_switcher.dart';

class ResponsiveDesktopAppBar extends StatelessWidget {
  const ResponsiveDesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => Container(
          width: SizeUtils.getWidth(context),
          height: kToolbarHeight,
          padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.getDynamicWidth(context, 0.08),
          ),
          decoration: BoxDecoration(
            color: BaseController.themeController.isDark.value
                ? kDarkBackgroundColor.withOpacity(0.8)
                : kLightBackgroundColor.withOpacity(0.8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ResponsiveAppBarTitle(),
              Row(
                children: [
                  ...pageList
                      .map(
                        (item) => ResponsiveAppBarActionsItem(
                          index: item.index,
                          title: item.title,
                        ),
                      )
                      .toList(),
                  const ThemeSwitcher(),
                ],
              ),
            ],
          ),
        ),
      );
  // Widget build(BuildContext context) => AppBar(
  //       title: const ResponsiveAppBarTitle(),
  //       elevation: 0,
  //       actions: [
  //         ...pageList
  //             .map(
  //               (item) => ResponsiveAppBarActionsItem(
  //                 index: item.index,
  //                 title: item.title,
  //               ),
  //             )
  //             .toList(),
  //         const ThemeSwitcher(),
  //       ],
  //     );
}
