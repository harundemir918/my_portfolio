/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'responsive_app_bar_actions_item.dart';
import 'responsive_app_bar_title.dart';

class ResponsiveDesktopAppBar extends StatelessWidget {
  const ResponsiveDesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
        title: const ResponsiveAppBarTitle(),
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
