/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'portfolio_detail_slider_card.dart';

class PortfolioDetailSlider extends StatelessWidget {
  const PortfolioDetailSlider({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        height: SizeUtils.getDynamicHeight(context, 0.8),
        child: Column(
          children: [
            CarouselSlider(
              items: BaseController.portfolioController.portfolioMediaUrls
                  .map((media) => PortfolioDetailSliderCard(image: media))
                  .toList(),
              carouselController:
                  BaseController.portfolioController.carouselController,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                aspectRatio: 3.0,
                onPageChanged: (index, reason) =>
                    BaseController.portfolioController.changeSliderPage(index),
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: BaseController.portfolioController.portfolioMediaUrls
                    .asMap()
                    .entries
                    .map(
                      (entry) => GestureDetector(
                        onTap: () => BaseController
                            .portfolioController.carouselController
                            .animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (BaseController.themeController.isDark.value
                                    ? kDarkPrimaryColor
                                    : kLightPrimaryColor)
                                .withOpacity(
                              BaseController.portfolioController.sliderIndex
                                          .value ==
                                      entry.key
                                  ? 1
                                  : 0.4,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
}
