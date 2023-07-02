/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/theme_switch.dart';

class NavigationThemeSwitcher extends StatelessWidget {
  const NavigationThemeSwitcher({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Positioned(
        top: 0,
        right: 0,
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: kBlackColor.withOpacity(0.8),
          ),
          child: const ThemeSwitch(),
        ),
      );
}
