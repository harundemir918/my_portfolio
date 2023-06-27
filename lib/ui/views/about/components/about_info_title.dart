/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

class AboutInfoTitle extends StatelessWidget {
  const AboutInfoTitle({super.key});

  @override
  Widget build(BuildContext context) => Text(
        "About",
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      );
}
