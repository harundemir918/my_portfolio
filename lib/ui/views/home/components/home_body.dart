/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/utils/size_utils.dart';
import 'home_contact_options.dart';
import 'home_description.dart';
import 'home_navigation_bar.dart';
import 'home_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: Future.wait([
          responsive_framework.loadLibrary(),
        ]),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Align(
              alignment: responsive_framework.ResponsiveBreakpoints.of(context)
                      .isDesktop
                  ? Alignment.centerLeft
                  : Alignment.center,
              child: Container(
                width: SizeUtils.getDynamicWidth(context, 0.7),
                height: SizeUtils.getHeight(context),
                padding: EdgeInsets.only(
                  left: responsive_framework.ResponsiveBreakpoints.of(context)
                          .isDesktop
                      ? SizeUtils.getDynamicWidth(context, 0.05)
                      : 0.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                      responsive_framework.ResponsiveBreakpoints.of(context)
                              .isDesktop
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                  children: [
                    const HomeTitle(),
                    const HomeDescription(),
                    if (responsive_framework.ResponsiveBreakpoints.of(context)
                        .isDesktop)
                      const HomeNavigationBar(),
                    const HomeContactOptions(),
                  ],
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
