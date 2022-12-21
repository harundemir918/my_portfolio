/*
Author: Harun Demir
Date: 21.12.2022
*/

import 'package:flutter/material.dart';

class PageModel {
  final int index;
  final String title;
  final Widget page;

  PageModel({required this.index, required this.title, required this.page});
}
