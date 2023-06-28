/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ResponsiveAppBarDrawerButton extends StatelessWidget {
  const ResponsiveAppBarDrawerButton({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(Icons.menu),
          tooltip: "Open navigation menu",
        ),
      );
}
