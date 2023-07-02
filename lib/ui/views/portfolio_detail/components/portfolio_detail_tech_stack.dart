/*
Author: Harun Demir
Date: 2.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class PortfolioDetailTechStack extends StatelessWidget {
  final List<String> techStack;

  const PortfolioDetailTechStack({required this.techStack, super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tech Stack",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Row(
                children: techStack
                    .map(
                      (tech) => Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding / 2),
                        padding: const EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          color: kShadowColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                        ),
                        child: Text(tech),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      );
}
