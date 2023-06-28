/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../base/base_controller.dart';
import '../../constants/constants.dart';

class ResponsiveAppBarActionsItem extends StatelessWidget {
  final int index;
  final String title;

  const ResponsiveAppBarActionsItem({
    required this.index,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Obx(
        () => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: TextButton(
              onPressed: () =>
                  BaseController.navigationController.changePage(index),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color:
                          BaseController.navigationController.pageIndex.value ==
                                  index
                              ? kPrimaryColor
                              : null,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ),
        ),
      );
}
