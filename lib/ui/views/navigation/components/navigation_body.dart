/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'navigation_background.dart';
import 'navigation_theme_switcher.dart';

class NavigationBody extends StatelessWidget {
  const NavigationBody({super.key});

  @override
  Widget build(BuildContext context) => Stack(
        alignment: BaseController.navigationController.pageIndex.value == 0
            ? Alignment.center
            : Alignment.topCenter,
        children: [
          const NavigationBackground(),
          Obx(
            () => PointerInterceptor(
              child: SizedBox(
                width: SizeUtils.getWidth(context),
                height: SizeUtils.getHeight(context),
                child: pageList[
                        BaseController.navigationController.pageIndex.value]
                    .page,
              ),
            ),
          ),
          if (ResponsiveBreakpoints.of(context).isDesktop)
            NavigationThemeSwitcher(),
        ],
      );
}
