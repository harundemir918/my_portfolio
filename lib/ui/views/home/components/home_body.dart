/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../core/utils/size_utils.dart';
import 'home_contact_options.dart';
import 'home_description.dart';
import 'home_navigation_bar.dart';
import 'home_title.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) => Align(
        alignment: ResponsiveBreakpoints.of(context).isDesktop
            ? Alignment.centerLeft
            : Alignment.center,
        child: Container(
          width: SizeUtils.getDynamicWidth(context, 0.7),
          padding: EdgeInsets.only(
            left: ResponsiveBreakpoints.of(context).isDesktop
                ? SizeUtils.getDynamicWidth(context, 0.05)
                : 0.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
