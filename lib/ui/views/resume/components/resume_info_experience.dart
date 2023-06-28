/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/resume_constants.dart';
import 'resume_info_title.dart';
import 'resume_list_card.dart';

class ResumeInfoExperience extends StatelessWidget {
  const ResumeInfoExperience({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ResumeInfoTitle(title: "Experience"),
          const SizedBox(height: kDefaultPadding * 2),
          Column(
            children: resumeExperienceList
                .map(
                  (exp) => ResumeListCard(resumeModel: exp),
                )
                .toList(),
          ),
        ],
      );
}
