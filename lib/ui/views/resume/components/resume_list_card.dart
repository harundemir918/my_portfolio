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
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResumeListCardTitle(resumeModel: resumeModel),
              ResumeListCardDetails(resumeModel: resumeModel),
              ResumeListCardDescription(resumeModel: resumeModel),
            ],
          ),
        ),
      );
}
