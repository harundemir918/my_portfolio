/*
Author: Harun Demir
Date: 26.12.2022
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../core/constants/constants.dart';
import '../../core/constants/portfolio_constants.dart';
import '../../core/utils/app_scroll_behavior.dart';
import '../../core/utils/size_utils.dart';

class PortfolioDetailView extends StatelessWidget {
  const PortfolioDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Center(
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    color: kBlackColor,
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              _portfolioDetailTitle(context, "Portfolio Project"),
              _portfolioDetailProjectSection(context),
            ],
          ),
        ),
      );

  Widget _portfolioDetailTitle(BuildContext context, String title) => Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(fontWeight: FontWeight.bold, color: kBlackColor),
        overflow: TextOverflow.ellipsis,
      );

  Container _portfolioDetailProjectSection(BuildContext context) => Container(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(kDefaultPadding),
          ),
        ),
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
              columnFlex: 1,
              child: _portfolioDetailSlider(context),
            ),
            responsive_framework.ResponsiveRowColumnItem(
              child: const SizedBox(
                width: kDefaultPadding * 2,
              ),
            ),
            responsive_framework.ResponsiveRowColumnItem(
              rowFlex: 1,
              columnFlex: 1,
              child: _portfolioDetailProjectInfo(context),
            ),
          ],
        ),
      );

  SizedBox _portfolioDetailSlider(BuildContext context) => SizedBox(
        height: SizeUtils.getDynamicHeight(context, 0.5),
        child: PageView.builder(
          scrollBehavior: AppScrollBehavior(),
          itemCount: portfolioList.first.mediaUrls.length,
          itemBuilder: (context, index) => _portfolioDetailSliderCard(
            image: portfolioList.first.mediaUrls[index],
          ),
        ),
      );

  SizedBox _portfolioDetailSliderCard({required String image}) => SizedBox(
        child: Image.network(
          image,
          fit: BoxFit.fitHeight,
        ),
      );

  Padding _portfolioDetailProjectInfo(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        child: Column(
          children: [
            _portfolioDetailDescriptionCard(context),
            _portfolioDetailTechStackCard(context),
          ],
        ),
      );

  Column _portfolioDetailTechStackCard(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tech Stack",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: kBlackColor, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            child: Row(
              children: portfolioList.first.techStack
                  .map(
                    (tech) => Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2),
                      padding: const EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                        color: kShadowColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),
                      ),
                      child: Text(tech),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );

  Column _portfolioDetailDescriptionCard(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: kBlackColor, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Icon(Icons.public),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Flexible(child: Text(portfolioList.first.url)),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.calendar_month),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Text(portfolioList.first.date),
            ],
          ),
          Text(portfolioList.first.description),
        ],
      );
}
