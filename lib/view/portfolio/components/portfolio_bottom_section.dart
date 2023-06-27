/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/size_utils.dart';
import 'portfolio_project_list.dart';

class PortfolioBottomSection extends StatelessWidget {
  const PortfolioBottomSection({super.key});

  @override
  Widget build(BuildContext context) => Container(
        height: SizeUtils.getDynamicHeight(context, 0.65),
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(kDefaultPadding),
          ),
        ),
        child: const PortfolioProjectList(),
      );
}
