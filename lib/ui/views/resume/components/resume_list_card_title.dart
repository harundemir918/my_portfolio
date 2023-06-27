/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/models/resume_model.dart';

class ResumeListCardTitle extends StatelessWidget {
  final ResumeModel resumeModel;

  const ResumeListCardTitle({required this.resumeModel, super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: Text(
          resumeModel.type == ResumeType.education
              ? resumeModel.location
              : resumeModel.title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      );
}
