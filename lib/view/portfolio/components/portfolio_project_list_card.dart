/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../portfolio_detail/portfolio_detail_view.dart';

class PortfolioProjectListCard extends StatelessWidget {
  final String image;

  const PortfolioProjectListCard({required this.image, super.key});

  @override
  Widget build(BuildContext context) => TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PortfolioDetailView(),
            ),
          );
        },
        child: SizedBox(
          child: Image.network(image),
        ),
      );
}
