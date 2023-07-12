/*
Author: Harun Demir
Date: 12.07.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'portfolio_detail_title.dart';

class PortfolioDetailTopSection extends StatelessWidget {
  final String title;

  const PortfolioDetailTopSection({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        width: SizeUtils.getWidth(context),
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 2,
          vertical: kDefaultPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PortfolioDetailTitle(title: title),
            ),
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.close, size: 30.0),
            ),
          ],
        ),
      );
}
