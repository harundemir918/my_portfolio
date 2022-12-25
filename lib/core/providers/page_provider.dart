/*
Author: Harun Demir
Date: 23.12.2022
*/

import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int pageIndex = 0;

  void changePage(int index) {
    pageIndex = index;
    notifyListeners();
  }
}
