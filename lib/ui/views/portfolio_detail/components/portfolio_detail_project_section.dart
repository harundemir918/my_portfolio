/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/constants/constants.dart';
import '../../../../core/models/portfolio_model.dart';
import 'portfolio_detail_project_info.dart';
import 'portfolio_detail_slider.dart';

class PortfolioDetailProjectSection extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailProjectSection({
    required this.portfolioModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, child) => Container(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          child: responsive_framework.ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            layout: responsive_framework.ResponsiveBreakpoints.of(context)
                    .smallerThan(responsive_framework.TABLET)
                ? responsive_framework.ResponsiveRowColumnType.COLUMN
                : responsive_framework.ResponsiveRowColumnType.ROW,
            columnMainAxisSize: MainAxisSize.min,
            children: [
              responsive_framework.ResponsiveRowColumnItem(
                rowFlex: 1,
                columnFlex: 2,
                child: const PortfolioDetailSlider(),
              ),
              responsive_framework.ResponsiveRowColumnItem(
                child: const SizedBox(
                  width: kDefaultPadding * 2,
                ),
              ),
              responsive_framework.ResponsiveRowColumnItem(
                rowFlex: 1,
                columnFlex: 1,
                child:
                    PortfolioDetailProjectInfo(portfolioModel: portfolioModel),
              ),
            ],
          ),
        ),
      );
}
