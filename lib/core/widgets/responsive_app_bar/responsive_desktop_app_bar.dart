/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'responsive_app_bar_actions_item.dart';

class ResponsiveDesktopAppBar extends StatelessWidget {
  const ResponsiveDesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(
          appName,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: kPrimaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: pageList
            .map(
              (item) => ResponsiveAppBarActionsItem(
                index: item.index,
                title: item.title,
              ),
            )
            .toList(),
      );
}
