/*
Author: Harun Demir
Date: 26.12.2022
Updated At: 21.09.2024
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/constants/constants.dart';
import '../../../core/models/portfolio_model.dart';
import 'components/portfolio_detail_body.dart';
import 'components/portfolio_detail_top_section.dart';

class PortfolioDetailView extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailView({
    required this.portfolioModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Dialog(
        insetPadding: EdgeInsets.all(
          ResponsiveBreakpoints.of(context).isDesktop
              ? kDefaultPadding * 3
              : kDefaultPadding,
        ),
        child: Column(
          children: [
            PortfolioDetailTopSection(title: portfolioModel.title),
            PortfolioDetailBody(portfolioModel: portfolioModel),
          ],
        ),
      );
}
