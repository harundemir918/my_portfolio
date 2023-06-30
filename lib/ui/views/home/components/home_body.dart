/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../../../core/base/base_controller.dart';
import '../../../../core/constants/constants.dart';
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
            return Obx(
              () => Align(
                alignment:
                    responsive_framework.ResponsiveBreakpoints.of(context)
                            .isDesktop
                        ? Alignment.centerLeft
                        : Alignment.center,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.linear,
                  // width: SizeUtils.getDynamicWidth(context, 0.5),
                  // height: SizeUtils.getDynamicHeight(context, 0.5),
                  margin: EdgeInsets.symmetric(
                    horizontal:
                        responsive_framework.ResponsiveBreakpoints.of(context)
                                .isDesktop
                            ? SizeUtils.getDynamicWidth(context, 0.05)
                            : kDefaultPadding * 2,
                  ),
                  padding: const EdgeInsets.all(kDefaultPadding),
                  decoration: BoxDecoration(
                    color: kWhiteColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(kDefaultPadding),
                    boxShadow: [
                      BoxShadow(
                        color: BaseController.colorController.shadowColor.value,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: const Offset(1, 1),
                      ),
                    ],
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
              ),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
