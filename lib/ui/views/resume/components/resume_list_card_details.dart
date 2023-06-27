/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/constants/constants.dart';
import '../../../../core/models/resume_model.dart';

class ResumeListCardDetails extends StatelessWidget {
  final ResumeModel resumeModel;

  const ResumeListCardDetails({required this.resumeModel, super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: responsive_framework.ResponsiveRowColumn(
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                layout: responsive_framework.ResponsiveBreakpoints.of(context)
                        .smallerThan(responsive_framework.DESKTOP)
                    ? responsive_framework.ResponsiveRowColumnType.COLUMN
                    : responsive_framework.ResponsiveRowColumnType.ROW,
                children: [
                  responsive_framework.ResponsiveRowColumnItem(
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Text(
                            resumeModel.type == ResumeType.education
                                ? resumeModel.title
                                : resumeModel.location,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: VerticalDivider(
                              thickness: 1,
                              width: 5,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  responsive_framework.ResponsiveRowColumnItem(
                    child: Text(resumeModel.date),
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
