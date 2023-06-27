/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(
          appName,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      );
}
