/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class PortfolioTitle extends StatelessWidget {
  const PortfolioTitle({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(
          "Portfolio",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      );
}
