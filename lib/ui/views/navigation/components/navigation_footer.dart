/*
Author: Harun Demir
Date: 12.07.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../core/utils/utils.dart';

class NavigationFooter extends StatelessWidget {
  const NavigationFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: SizeUtils.getWidth(context),
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: kBlackColor.withOpacity(0.8),
          ),
          child: ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            layout: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            columnMainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ResponsiveRowColumnItem(
                child: Text(
                  "2023 harundemir.org | Background by ",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: kWhiteColor,
                      ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: InkWell(
                  onTap: () => Utils.navigateToUrl(
                    "https://wallpaperaccess.com/8-bit-japan",
                  ),
                  child: Text(
                    "WallpaperAccess",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
