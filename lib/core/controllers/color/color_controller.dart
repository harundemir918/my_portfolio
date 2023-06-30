/*
Author: Harun Demir
Date: 23.12.2022
*/

import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:get/get.dart';

import '../../constants/constants.dart';

class ColorController extends GetxController {
  Rx<Color> shadowColor = kShadowColor.obs;
  Rxn<Timer> timer = Rxn<Timer>();

  @override
  void onInit() {
    initTimer();
    super.onInit();
  }

  void initTimer() {
    timer.value ??= Timer.periodic(
      const Duration(seconds: 1),
      (timer) => changeShadowColor(),
    );
  }

  void changeShadowColor() {
    final random = Random();
    shadowColor.value = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      0.5,
    );
  }
}
