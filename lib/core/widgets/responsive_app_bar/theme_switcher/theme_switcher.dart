import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/base_controller.dart';
import '../../../constants/constants.dart';
import 'theme_switcher_button.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
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
              ThemeSwitcherButton(
                backgroundColor: BaseController.themeController.isDark.value
                    ? kTransparentColor
                    : kLightPrimaryColor,
                icon: Icons.light_mode,
                iconColor: kWhiteColor,
              ),
              ThemeSwitcherButton(
                backgroundColor: BaseController.themeController.isDark.value
                    ? kDarkPrimaryColor
                    : kTransparentColor,
                icon: Icons.dark_mode,
                iconColor: BaseController.themeController.isDark.value
                    ? kWhiteColor
                    : kBlackColor,
              ),
            ],
          ),
        ),
      );
}
