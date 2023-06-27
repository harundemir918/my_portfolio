/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/resume_constants.dart';

class AboutInfoSummary extends StatelessWidget {
  const AboutInfoSummary({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Text(
          jobDescription,
          textAlign: TextAlign.justify,
        ),
      );
}
