/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/models/portfolio_model.dart';
import 'portfolio_detail_description.dart';
import 'portfolio_detail_tech_stack.dart';

class PortfolioDetailProjectInfo extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailProjectInfo({required this.portfolioModel, super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            PortfolioDetailDescription(portfolioModel: portfolioModel),
            PortfolioDetailTechStack(techStack: portfolioModel.techStack),
          ],
        ),
      );
}
