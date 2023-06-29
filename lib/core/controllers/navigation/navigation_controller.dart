/*
Author: Harun Demir
Date: 23.12.2022
*/

import 'package:flutter/animation.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt pageIndex = 0.obs;
  Rxn<FlutterGifController> gifController = Rxn<FlutterGifController>();

  Future<void> initGifController(TickerProvider tickerProvider) async {
    gifController.value = FlutterGifController(vsync: tickerProvider);
  }

  void repeatGif() {
    gifController.value
        ?.repeat(min: 0, max: 200, period: const Duration(seconds: 10));
  }

  void changePage(int index) {
    pageIndex.value = index;
  }
}
