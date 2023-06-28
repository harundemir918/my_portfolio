/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/resume_constants.dart';
import 'resume_info_title.dart';
import 'resume_list_card.dart';

class ResumeInfoEducation extends StatelessWidget {
  const ResumeInfoEducation({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => SizedBox(
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ResumeInfoTitle(title: "Education"),
              const SizedBox(height: kDefaultPadding * 2),
              Column(
                children: resumeEducationList
                    .map(
                      (edu) => ResumeListCard(
                        resumeModel: edu,
                        constraints: constraints,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );
}
