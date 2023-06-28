/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'about_description.dart';
import 'about_image.dart';
import 'about_info_summary.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              width: SizeUtils.getWidth(context),
              padding: EdgeInsets.symmetric(
                horizontal:
                    responsive_framework.ResponsiveBreakpoints.of(context)
                            .smallerThan(responsive_framework.DESKTOP)
                        ? kDefaultPadding * 2
                        : 0.0,
                vertical: kDefaultPadding * 4,
              ),
              child: responsive_framework.ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                layout: responsive_framework.ResponsiveBreakpoints.of(context)
                        .smallerThan(responsive_framework.TABLET)
                    ? responsive_framework.ResponsiveRowColumnType.COLUMN
                    : responsive_framework.ResponsiveRowColumnType.ROW,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  responsive_framework.ResponsiveRowColumnItem(
                    rowFlex: 3,
                    child: const AboutImage(),
                  ),
                  responsive_framework.ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: const SizedBox.shrink(),
                  ),
                  responsive_framework.ResponsiveRowColumnItem(
                    rowFlex: 3,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: kDefaultPadding * 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AboutDescription(),
                          AboutInfoSummary(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
