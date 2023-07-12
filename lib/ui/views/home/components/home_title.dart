/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Text(
          appName,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      );
}
