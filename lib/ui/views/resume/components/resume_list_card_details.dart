/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/models/resume_model.dart';

class ResumeListCardDetails extends StatelessWidget {
  final ResumeModel resumeModel;

  const ResumeListCardDetails({required this.resumeModel, super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              resumeModel.type == ResumeType.education
                  ? resumeModel.title
                  : resumeModel.location,
            ),
            Text(resumeModel.date),
          ],
        ),
      );
}
