/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/utils/size_utils.dart';
import 'resume_title.dart';

class ResumeTopSection extends StatelessWidget {
  const ResumeTopSection({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: SizeUtils.getWidth(context),
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
        child: const ResumeTitle(),
      );
}
