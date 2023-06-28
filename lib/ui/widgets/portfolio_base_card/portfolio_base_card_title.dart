/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class PortfolioBaseCardTitle extends StatelessWidget {
  final String title;

  const PortfolioBaseCardTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      );
}
