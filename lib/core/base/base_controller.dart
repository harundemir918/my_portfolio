/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:get/get.dart';

import '../controllers/home/home_controller.dart';

class BaseController {
  static HomeController homeController = Get.find<HomeController>();
}
