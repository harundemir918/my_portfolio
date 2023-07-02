/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

class PortfolioDetailTitle extends StatelessWidget {
  final String title;

  const PortfolioDetailTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      );
}
