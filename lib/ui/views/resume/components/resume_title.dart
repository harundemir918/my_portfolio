/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class ResumeTitle extends StatelessWidget {
  const ResumeTitle({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(
          "Resume",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      );
}
