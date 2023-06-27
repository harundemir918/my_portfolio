/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../core/constants/constants.dart';
import '../../../core/constants/resume_constants.dart';

class AboutImage extends StatelessWidget {
  const AboutImage({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              child: Image.asset(
                profileUrl,
                width: responsive_framework.ResponsiveBreakpoints.of(context)
                        .smallerThan(responsive_framework.TABLET)
                    ? 200
                    : 270,
                fit: BoxFit.fitWidth,
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
}
