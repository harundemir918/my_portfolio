/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import 'about_info_summary.dart';
import 'about_info_title.dart';

class AboutInfoTop extends StatelessWidget {
  const AboutInfoTop({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutInfoTitle(),
          AboutInfoSummary(),
        ],
      );
}
