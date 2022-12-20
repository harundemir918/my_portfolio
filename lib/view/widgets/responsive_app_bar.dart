import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/size_utils.dart';

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  State<ResponsiveAppBar> createState() => _ResponsiveAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizeUtils.isDesktop(context) ? desktopAppBar() : mobileAppBar();
  }

  Widget mobileAppBar() {
    return AppBar(
      title: const Text(appName),
      actions: [
        _drawerButton(),
      ],
    );
  }

  Padding _drawerButton() {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: IconButton(
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        icon: const Icon(Icons.menu),
        tooltip: "Open navigation menu",
      ),
    );
  }

  Widget desktopAppBar() {
    return AppBar(
      title: const Text(appName),
      actions: [
        _appBarActionsItem("About"),
        _appBarActionsItem("Resume"),
        _appBarActionsItem("Portfolio"),
      ],
    );
  }

  Center _appBarActionsItem(String title) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        child: Text(title),
      ),
    );
  }
}
