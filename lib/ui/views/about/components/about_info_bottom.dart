/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import 'about_bottom_info_row.dart';

class AboutInfoBottom extends StatelessWidget {
  const AboutInfoBottom({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          AboutBottomInfoRow(
            title: "Address",
            description: "Istanbul, Turkiye",
          ),
          AboutBottomInfoRow(
            title: "Job Status",
            description: "Fulltime Developer",
          ),
        ],
      );
}
