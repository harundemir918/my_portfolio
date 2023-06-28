/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: pageList
              .map(
                (page) => TextButton(
                  onPressed: () => BaseController.navigationController
                      .changePage(page.index),
                  child: Text(
                    page.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
