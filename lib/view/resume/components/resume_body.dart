/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import 'resume_bottom_section.dart';
import 'resume_top_section.dart';

class ResumeBody extends StatelessWidget {
  const ResumeBody({super.key});

  @override
  Widget build(BuildContext context) => const Wrap(
        children: [
          ResumeTopSection(),
          ResumeBottomSection(),
        ],
      );
}
