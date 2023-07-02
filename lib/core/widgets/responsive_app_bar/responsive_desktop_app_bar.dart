/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/size_utils.dart';
import 'responsive_app_bar_actions_item.dart';
import 'responsive_app_bar_title.dart';
import 'theme_switcher/theme_switcher.dart';

class ResponsiveDesktopAppBar extends StatelessWidget {
  const ResponsiveDesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.getDynamicWidth(context, 0.13),
        ),
        child: AppBar(
            title: const ResponsiveAppBarTitle(),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            actions: [
              ...pageList
                  .map(
                    (item) => ResponsiveAppBarActionsItem(
                      index: item.index,
                      title: item.title,
                    ),
                  )
                  .toList(),
              const ThemeSwitcher(),
            ]),
      );
}
