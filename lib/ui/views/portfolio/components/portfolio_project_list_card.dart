/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/models/portfolio_model.dart';
import '../../../../core/utils/size_utils.dart';
import '../../portfolio_detail/portfolio_detail_view.dart';

class PortfolioProjectListCard extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioProjectListCard({required this.portfolioModel, super.key});

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PortfolioDetailView(
                portfolioModel: portfolioModel,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            SizedBox(
              child: Image.network(
                portfolioModel.mediaUrls.first,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: SizeUtils.getWidth(context),
                color: kBlackColor.withOpacity(0.8),
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      portfolioModel.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: kWhiteColor,
                          ),
                    ),
                    const Icon(Icons.chevron_right_rounded, color: kWhiteColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
