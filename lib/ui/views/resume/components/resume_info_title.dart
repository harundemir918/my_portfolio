/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

class ResumeInfoTitle extends StatelessWidget {
  final String title;

  const ResumeInfoTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      );
}
