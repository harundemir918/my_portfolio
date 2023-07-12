/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import 'portfolio_project_list.dart';
import 'portfolio_type_list.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(kDefaultPadding),
          ),
        ),
        child: const Column(
          children: [
            PortfolioTypeList(),
            PortfolioProjectList(),
          ],
        ),
      );
}
