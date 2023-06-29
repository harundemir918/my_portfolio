/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/constants/constants.dart';
import 'resume_info_education.dart';
import 'resume_info_experience.dart';

class ResumeBody extends StatelessWidget {
  const ResumeBody({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              padding: const EdgeInsets.all(kDefaultPadding * 2),
              child: responsive_framework.ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                layout: responsive_framework.ResponsiveBreakpoints.of(context)
                        .smallerThan(responsive_framework.TABLET)
                    ? responsive_framework.ResponsiveRowColumnType.COLUMN
                    : responsive_framework.ResponsiveRowColumnType.ROW,
                columnMainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  responsive_framework.ResponsiveRowColumnItem(
                    rowFlex: 5,
                    columnFlex: 1,
                    child: const ResumeInfoEducation(),
                  ),
                  responsive_framework.ResponsiveRowColumnItem(
                    rowFlex: 1,
                    columnFlex: 1,
                    child: const SizedBox.shrink(),
                  ),
                  responsive_framework.ResponsiveRowColumnItem(
                    rowFlex: 5,
                    columnFlex: 1,
                    child: const ResumeInfoExperience(),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
