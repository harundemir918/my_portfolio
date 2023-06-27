/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class AboutContactItem extends StatelessWidget {
  final String icon;
  final String url;

  const AboutContactItem({
    required this.icon,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: kDefaultIconSize,
        height: kDefaultIconSize,
        child: IconButton(
          onPressed: () => Utils.navigateToUrl(url),
          icon: CircleAvatar(
            backgroundColor: kWhiteColor,
            child: SvgPicture.asset(
              icon,
              width: kDefaultIconSize / 2,
              height: kDefaultIconSize / 2,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      );
}
