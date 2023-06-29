/*
Author: Harun Demir
Date: 23.12.2022
*/

import 'package:get/get.dart';
import 'package:gif/gif.dart';

class NavigationController extends GetxController {
  RxInt pageIndex = 0.obs;
  Rxn<GifController> gifController = Rxn<GifController>();

  void initGifController(tickerProvider) {
    gifController.value ??= GifController(vsync: tickerProvider);
  }

  void changePage(int index) {
    pageIndex.value = index;
  }
}
