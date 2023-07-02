import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../base/base_controller.dart';
import '../constants/constants.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          BaseController.themeController.changeTheme(
            BaseController.themeController.isDark.value
                ? ThemeMode.light
                : ThemeMode.dark,
          );
          BaseController.backgroundController.getBackgroundImage();
        },
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  backgroundColor: BaseController.themeController.isDark.value
                      ? kTransparentColor
                      : kLightPrimaryColor,
                  radius: kDefaultPadding * 2,
                  child: Icon(
                    Icons.light_mode,
                    color: ResponsiveBreakpoints.of(context).isDesktop
                        ? kWhiteColor
                        : null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  backgroundColor: BaseController.themeController.isDark.value
                      ? kDarkPrimaryColor
                      : kTransparentColor,
                  radius: kDefaultPadding * 2,
                  child: Icon(
                    Icons.dark_mode,
                    color: ResponsiveBreakpoints.of(context).isDesktop
                        ? kWhiteColor
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
