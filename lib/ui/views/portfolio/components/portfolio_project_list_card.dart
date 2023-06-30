/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/models/portfolio_model.dart';
import '../../portfolio_detail/portfolio_detail_view.dart';

class PortfolioProjectListCard extends StatelessWidget {
  final PortfolioModel portfolioModel;

  const PortfolioProjectListCard({required this.portfolioModel, super.key});

  @override
  Widget build(BuildContext context) => TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PortfolioDetailView(
                portfolioModel: portfolioModel,
              ),
            ),
          );
        },
        child: SizedBox(
          child: Image.network(portfolioModel.mediaUrls.first),
        ),
      );
}
