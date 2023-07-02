/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

import '../../../base/base_controller.dart';
import '../../../constants/constants.dart';

class ThemeSwitcherButton extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;

  const ThemeSwitcherButton({
    required this.backgroundColor,
    required this.icon,
    required this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: kDefaultPadding * 2,
          child: Icon(
            icon,
            color: BaseController.navigationController.pageIndex.value == 0
                ? kWhiteColor
                : iconColor,
          ),
        ),
      );
}
