/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class ResponsiveAppBarTitle extends StatelessWidget {
  const ResponsiveAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Text(
          appName,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      );
}
