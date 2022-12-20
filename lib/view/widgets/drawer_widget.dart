/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        child: Column(
          children: [
            _drawerItem("About"),
            _drawerItem("Resume"),
            _drawerItem("Portfolio"),
          ],
        ),
      ),
    );
  }

  Padding _drawerItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Text(
        title,
        style: const TextStyle(
          color: kWhiteColor,
        ),
      ),
    );
  }
}
