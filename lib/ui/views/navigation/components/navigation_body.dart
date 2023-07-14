/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'navigation_app_bar.dart';
import 'navigation_background.dart';
import 'navigation_theme_switcher.dart';

class NavigationBody extends StatelessWidget {
  const NavigationBody({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => Stack(
          alignment: BaseController.navigationController.pageIndex.value == 0
              ? Alignment.center
              : Alignment.topCenter,
          children: [
            const NavigationBackground(),
            PointerInterceptor(
              child: SizedBox(
                width: SizeUtils.getWidth(context),
                height: SizeUtils.getHeight(context),
                child: Column(
                  children: [
                    const NavigationAppBar(),
                    Expanded(
                      child: pageList[BaseController
                              .navigationController.pageIndex.value]
                          .page,
                    ),
                  ],
                ),
              ),
            ),
            if (ResponsiveBreakpoints.of(context).isDesktop &&
                BaseController.navigationController.pageIndex.value == 0)
              const NavigationThemeSwitcher(),
            // const NavigationFooter(),
          ],
        ),
      );
}
