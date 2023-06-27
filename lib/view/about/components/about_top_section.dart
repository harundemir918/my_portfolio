/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../core/constants/constants.dart';
import 'about_contact_options.dart';
import 'about_description.dart';
import 'about_image.dart';
import 'about_title.dart';

class AboutTopSection extends StatelessWidget {
  const AboutTopSection({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
                vertical: kDefaultPadding * 4,
              ),
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(kDefaultPadding),
                ),
              ),
              child: responsive_framework.ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                layout: responsive_framework.ResponsiveBreakpoints.of(context)
                        .smallerThan(responsive_framework.TABLET)
                    ? responsive_framework.ResponsiveRowColumnType.COLUMN
                    : responsive_framework.ResponsiveRowColumnType.ROW,
                children: [
                  responsive_framework.ResponsiveRowColumnItem(
                    child: AboutImage(),
                  ),
                  responsive_framework.ResponsiveRowColumnItem(
                    child: Column(
                      children: [
                        AboutTitle(),
                        AboutDescription(),
                        const SizedBox(height: kDefaultPadding * 2),
                        AboutContactOptions(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
}
