import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/base/base_controller.dart';
import '../../core/constants/constants.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop
          ? desktopAppBar(context)
          : mobileAppBar(context);

  Widget mobileAppBar(BuildContext context) => AppBar(
        title: const Text(appName),
        actions: [
          _drawerButton(context),
        ],
      );

  Padding _drawerButton(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.menu),
          tooltip: "Open navigation menu",
        ),
      );

  Widget desktopAppBar(BuildContext context) => AppBar(
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
              (item) => _appBarActionsItem(
                context,
                index: item.index,
                title: item.title,
              ),
            )
            .toList(),
      );

  Obx _appBarActionsItem(BuildContext context,
          {required int index, required String title}) =>
      Obx(
        () => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TextButton(
              onPressed: () => BaseController.homeController.changePage(index),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color:
                          BaseController.homeController.pageIndex.value == index
                              ? kPrimaryColor
                              : kBlackColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ),
        ),
      );
}
