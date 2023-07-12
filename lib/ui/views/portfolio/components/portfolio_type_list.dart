/*
Author: Harun Demir
Date: 12.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/portfolio_constants.dart';
import 'portfolio_type_button.dart';

class PortfolioTypeList extends StatelessWidget {
  const PortfolioTypeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: portfolioTypeList
              .map(
                (type) => PortfolioTypeButton(
                  title: type["title"],
                  type: type["type"],
                ),
              )
              .toList(),
        ),
      );
}
