/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/data/page_list.dart';

import '../../core/constants/constants.dart';

class DrawerWidget extends StatelessWidget {
  final int pageIndex;

  const DrawerWidget({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
  }

  Widget _appBarActionsItem(
    BuildContext context, {
    required int index,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: kWhiteColor,
                fontWeight:
                    pageIndex == index ? FontWeight.bold : FontWeight.w400,
              ),
        ),
      ),
    );
  }
}
