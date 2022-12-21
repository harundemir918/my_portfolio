import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/constants/constants.dart';
import '../../core/data/page_list.dart';

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  final int pageIndex;

  const ResponsiveAppBar({
    Key? key,
    required this.pageIndex,
  }) : super(key: key);

  @override
  State<ResponsiveAppBar> createState() => _ResponsiveAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.of(context).isDesktop
        ? desktopAppBar()
        : mobileAppBar();
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
      title: Text(
        appName,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: kPrimaryColor),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: pageList
          .map(
            (item) => _appBarActionsItem(
              index: item.index,
              title: item.title,
            ),
          )
          .toList(),
    );
  }

  Center _appBarActionsItem({required int index, required String title}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color:
                      widget.pageIndex == index ? kPrimaryColor : kBlackColor,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ),
    );
  }
}
