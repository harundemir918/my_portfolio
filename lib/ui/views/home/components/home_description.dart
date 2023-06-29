/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants/constants.dart';

class HomeDescription extends StatelessWidget {
  const HomeDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: RichText(
          text: TextSpan(
            text: "I'm a passionate",
            style: Theme.of(context).textTheme.headlineMedium,
            children: const [
              TextSpan(
                text: " Flutter developer ",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              TextSpan(text: "from Turkiye"),
            ],
          ),
          textAlign: ResponsiveBreakpoints.of(context).isDesktop
              ? TextAlign.start
              : TextAlign.center,
        ),
      );
}
