/*
Author: Harun Demir
Date: 29.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/page_model.dart';

class HomeNavigationBarItem extends StatelessWidget {
  final PageModel page;

  const HomeNavigationBarItem({
    required this.page,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: TextButton(
          onPressed: () =>
              BaseController.navigationController.changePage(page.index),
          style: IconButton.styleFrom(
            backgroundColor: Colors.black45,
            hoverColor: kPrimaryColor,
          ),
          child: Text(
            page.title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: kWhiteColor,
                ),
          ),
        ),
      );
}
