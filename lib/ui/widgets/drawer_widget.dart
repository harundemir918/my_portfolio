/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';

import '../../core/base/base_controller.dart';
import '../../core/constants/constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          child: Column(
            children: pageList
                .map(
                  (item) => _appBarActionsItem(
                    context,
                    index: item.index,
                    title: item.title,
                  ),
                )
                .toList(),
          ),
        ),
      );

  Widget _appBarActionsItem(
    BuildContext context, {
    required int index,
    required String title,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: TextButton(
          onPressed: () {
            BaseController.homeController.changePage(index);
            Scaffold.of(context).closeEndDrawer();
          },
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: kWhiteColor,
                  fontWeight:
                      BaseController.homeController.pageIndex.value == index
                          ? FontWeight.bold
                          : FontWeight.w400,
                ),
          ),
        ),
      );
}
