/*
Author: Harun Demir
Date: 23.12.2022
*/

import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt pageIndex = 0.obs;

  void initBackgroundGif(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'background',
      (int viewId) => IFrameElement()
        ..src = "assets/index.html"
        ..style.border = 'none',
    );
  }

  void changePage(int index) {
    pageIndex.value = index;
  }
}
