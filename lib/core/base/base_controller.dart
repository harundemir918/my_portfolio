/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:get/get.dart';

import '../controllers/navigation/navigation_controller.dart';

class BaseController {
  static NavigationController navigationController =
      Get.find<NavigationController>();
}
