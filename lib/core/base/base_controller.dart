/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:get/get.dart';

import '../controllers/color/color_controller.dart';
import '../controllers/navigation/navigation_controller.dart';
import '../controllers/theme/theme_controller.dart';

class BaseController {
  static NavigationController navigationController =
      Get.find<NavigationController>();
  static ColorController colorController = Get.find<ColorController>();
  static ThemeController themeController = Get.find<ThemeController>();
}
