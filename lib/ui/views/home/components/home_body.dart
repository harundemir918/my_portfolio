/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/size_utils.dart';
import 'home_contact_options.dart';
import 'home_description.dart';
import 'home_navigation_bar.dart';
import 'home_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: SizeUtils.getWidth(context),
        height: SizeUtils.getHeight(context),
        child: Container(
          width: SizeUtils.getDynamicWidth(context, 0.1),
          height: SizeUtils.getDynamicHeight(context, 0.2),
          padding: EdgeInsets.only(
              left: ResponsiveBreakpoints.of(context).isDesktop
                  ? kDefaultPadding * 10
                  : 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: ResponsiveBreakpoints.of(context).isDesktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              const HomeTitle(),
              const HomeDescription(),
              if (ResponsiveBreakpoints.of(context).isDesktop)
                const HomeNavigationBar(),
              const HomeContactOptions(),
            ],
          ),
        ),
      );
}
