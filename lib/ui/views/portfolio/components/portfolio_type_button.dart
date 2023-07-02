/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/portfolio_model.dart';

class PortfolioTypeButton extends StatelessWidget {
  final String title;
  final PortfolioType type;

  const PortfolioTypeButton({
    required this.title,
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ElevatedButton(
            onPressed: () =>
                BaseController.portfolioController.changeType(type),
            style: IconButton.styleFrom(
              backgroundColor:
                  BaseController.portfolioController.portfolioType.value == type
                      ? BaseController.themeController.isDark.value
                          ? kDarkPrimaryColor
                          : kLightPrimaryColor
                      : null,
              hoverColor: BaseController.themeController.isDark.value
                  ? kDarkPrimaryColor
                  : kLightPrimaryColor,
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: BaseController
                                .portfolioController.portfolioType.value ==
                            type
                        ? kWhiteColor
                        : BaseController.themeController.isDark.value
                            ? kWhiteColor
                            : kBlackColor,
                  ),
            ),
          ),
        ),
      );
}
