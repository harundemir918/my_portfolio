/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/models/resume_model.dart';
import 'resume_list_card_description.dart';
import 'resume_list_card_details.dart';
import 'resume_list_card_title.dart';

class ResumeListCard extends StatelessWidget {
  final ResumeModel resumeModel;

  const ResumeListCard({required this.resumeModel, super.key});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        decoration: const BoxDecoration(
          border: Border(left: BorderSide(width: 1, color: kPrimaryColor)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResumeListCardTitle(resumeModel: resumeModel),
            ResumeListCardDetails(resumeModel: resumeModel),
            ResumeListCardDescription(resumeModel: resumeModel),
          ],
        ),
      );
}
