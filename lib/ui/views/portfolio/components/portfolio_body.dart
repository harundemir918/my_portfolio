/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import 'portfolio_bottom_section.dart';
import 'portfolio_top_section.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) => const Wrap(
        children: [
          PortfolioTopSection(),
          PortfolioBottomSection(),
        ],
      );
}
