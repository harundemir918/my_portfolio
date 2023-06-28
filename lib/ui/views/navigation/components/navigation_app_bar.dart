/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/widgets/responsive_app_bar/responsive_app_bar.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) => const ResponsiveAppBar();
}
