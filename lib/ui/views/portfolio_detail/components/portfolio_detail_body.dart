/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/models/portfolio_model.dart';
import '../../../../core/utils/size_utils.dart';
import 'portfolio_detail_project_section.dart';

class PortfolioDetailBody extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailBody({required this.portfolioModel, super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: SizeUtils.getWidth(context),
        height: SizeUtils.getDynamicHeight(context, 0.8),
        child: PortfolioDetailProjectSection(portfolioModel: portfolioModel),
      );
}
