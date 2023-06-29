/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'navigation_background.dart';

class NavigationBody extends StatelessWidget {
  const NavigationBody({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: SizeUtils.getWidth(context),
        height: SizeUtils.getHeight(context),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const NavigationBackground(),
            Obx(
              () =>
                  pageList[BaseController.navigationController.pageIndex.value]
                      .page,
            ),
          ],
        ),
      );
}
