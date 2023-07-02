/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/base/base_controller.dart';
import '../../../core/constants/constants.dart';
import '../../../core/utils/size_utils.dart';
import 'portfolio_base_card_title.dart';

class PortfolioBaseCardBody extends StatelessWidget {
  final String title;
  final Widget cardBody;

  const PortfolioBaseCardBody({
    required this.title,
    required this.cardBody,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Obx(
        () => AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
          margin: EdgeInsets.symmetric(
            horizontal: ResponsiveBreakpoints.of(context).isDesktop
                ? SizeUtils.getDynamicWidth(context, 0.1)
                : kDefaultPadding,
            vertical: kToolbarHeight * 1.25,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(kDefaultPadding),
            boxShadow: [
              BoxShadow(
                color: BaseController.colorController.shadowColor.value,
                blurRadius: 10,
                spreadRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              PortfolioBaseCardTitle(title: title),
              cardBody,
            ],
          ),
        ),
      );
}
