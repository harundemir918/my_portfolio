/*
Author: Harun Demir
Date: 23.12.2022
*/

import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt pageIndex = 0.obs;

  void changePage(int index) {
    pageIndex.value = index;
  }
}
