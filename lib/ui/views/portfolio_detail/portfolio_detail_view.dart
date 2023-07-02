/*
Author: Harun Demir
Date: 26.12.2022
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../core/constants/constants.dart';
import '../../../core/models/portfolio_model.dart';
import 'components/portfolio_detail_body.dart';
import 'components/portfolio_detail_title.dart';

class PortfolioDetailView extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailView({
    required this.portfolioModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Dialog(
        insetPadding: EdgeInsets.all(
          ResponsiveBreakpoints.of(context).isDesktop
              ? kDefaultPadding * 3
              : kDefaultPadding,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PortfolioDetailTitle(title: portfolioModel.title),
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.close, size: kDefaultIconSize),
                  ),
                ],
              ),
            ),
            PortfolioDetailBody(portfolioModel: portfolioModel),
          ],
        ),
      );
}
