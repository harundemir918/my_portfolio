/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class HomeContactItem extends StatelessWidget {
  final String icon;
  final String url;

  const HomeContactItem({
    required this.icon,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        width: kDefaultIconSize,
        height: kDefaultIconSize,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: IconButton(
          onPressed: () => Utils.navigateToUrl(url),
          style: IconButton.styleFrom(backgroundColor: Colors.black45),
          hoverColor: kPrimaryColor,
          icon: SvgPicture.asset(
            icon,
            width: kDefaultIconSize / 2,
            height: kDefaultIconSize / 2,
            fit: BoxFit.fitWidth,
            colorFilter: const ColorFilter.mode(
              kWhiteColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      );
}
