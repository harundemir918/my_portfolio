/*
Author: Harun Demir
Date: 29.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/utils/size_utils.dart';

class NavigationBackground extends StatelessWidget {
  const NavigationBackground({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Image.asset(
          "assets/images/background.webp",
          fit: ResponsiveBreakpoints.of(context).isDesktop
              ? BoxFit.fill
              : BoxFit.fitHeight,
          width: SizeUtils.getWidth(context),
          height: SizeUtils.getHeight(context),
        ),
      );
}
