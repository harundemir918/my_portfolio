/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/portfolio_constants.dart';
import 'portfolio_project_list_card.dart';

class PortfolioProjectList extends StatefulWidget {
  const PortfolioProjectList({super.key});

  @override
  State<PortfolioProjectList> createState() => _PortfolioProjectListState();
}

class _PortfolioProjectListState extends State<PortfolioProjectList> {
  int _getGridViewCrossAxisCount() =>
      responsive_framework.ResponsiveBreakpoints.of(context)
              .smallerThan(responsive_framework.DESKTOP)
          ? responsive_framework.ResponsiveBreakpoints.of(context)
                  .smallerThan(responsive_framework.TABLET)
              ? 1
              : 2
          : 3;

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: portfolioList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisCount: _getGridViewCrossAxisCount(),
                mainAxisSpacing: kDefaultPadding / 2,
                crossAxisSpacing: kDefaultPadding / 2,
              ),
              itemBuilder: (context, index) => PortfolioProjectListCard(
                image: portfolioList[index].mediaUrls.first,
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
}
