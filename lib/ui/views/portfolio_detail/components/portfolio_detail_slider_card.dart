/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

class PortfolioDetailSliderCard extends StatelessWidget {
  final String image;

  const PortfolioDetailSliderCard({required this.image, super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Image.network(
          image,
          fit: BoxFit.fitHeight,
        ),
      );
}
