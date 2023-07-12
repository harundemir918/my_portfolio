/*
Author: Harun Demir
Date: 21.12.2022
*/

import 'package:flutter/material.dart';

import '../../core/base/base_controller.dart';
import '../../core/constants/constants.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            BaseController.themeController.isDark.value
                ? kDarkPrimaryColor
                : kLightPrimaryColor,
          ),
        ),
      );
}
