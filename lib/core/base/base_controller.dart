/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:get/get.dart';

import '../controllers/background/background_controller.dart';
import '../controllers/color/color_controller.dart';
import '../controllers/navigation/navigation_controller.dart';
import '../controllers/portfolio/portfolio_controller.dart';
import '../controllers/theme/theme_controller.dart';

class BaseController {
  static NavigationController navigationController =
      Get.find<NavigationController>();
  static PortfolioController portfolioController =
      Get.find<PortfolioController>();
  static ColorController colorController = Get.find<ColorController>();
  static ThemeController themeController = Get.find<ThemeController>();
  static BackgroundController backgroundController =
      Get.find<BackgroundController>();
}
