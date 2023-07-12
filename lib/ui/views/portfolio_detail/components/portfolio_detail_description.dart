/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/models/portfolio_model.dart';
import '../../../../core/utils/utils.dart';

class PortfolioDetailDescription extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioDetailDescription({required this.portfolioModel, super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              children: [
                const Icon(Icons.public),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                Flexible(
                  child: InkWell(
                    onTap: () => Utils.navigateToUrl(portfolioModel.url),
                    child: Text(portfolioModel.url),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              children: [
                const Icon(Icons.calendar_month),
                const SizedBox(
                  width: kDefaultPadding,
                ),
                Flexible(child: Text(portfolioModel.date)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(portfolioModel.description),
          ),
        ],
      );
}
