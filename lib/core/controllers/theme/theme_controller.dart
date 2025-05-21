import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  late final SharedPreferences _prefs;
  Rx<ThemeMode> theme = ThemeMode.dark.obs;
  RxBool isDark = false.obs;

  @override
  void onInit() async {
    _prefs = await SharedPreferences.getInstance();
    getTheme();
    super.onInit();
  }

  void getTheme() async {
    isDark.value = _prefs.getBool('isDark') ?? false;
    theme.value = isDark.value ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme(ThemeMode themeMode) {
    theme.value = themeMode;
    isDark.value = themeMode == ThemeMode.dark;
    _prefs.setBool("isDark", isDark.value);
    Get.changeThemeMode(themeMode);
  }
}
