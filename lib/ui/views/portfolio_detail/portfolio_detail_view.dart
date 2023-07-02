/*
Author: Harun Demir
Date: 26.12.2022
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constants/constants.dart';
import '../../../core/models/portfolio_model.dart';
import 'components/portfolio_detail_body.dart';

class PortfolioDetailView extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailView({
    required this.portfolioModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AlertDialog(
        scrollable: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(portfolioModel.title),
            IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.close, size: kDefaultIconSize),
            ),
          ],
        ),
        content: PortfolioDetailBody(portfolioModel: portfolioModel),
      );
}
