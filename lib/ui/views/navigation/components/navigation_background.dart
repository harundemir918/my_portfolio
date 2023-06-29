/*
Author: Harun Demir
Date: 29.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../core/utils/size_utils.dart';

class NavigationBackground extends StatefulWidget {
  const NavigationBackground({
    super.key,
  });

  @override
  State<NavigationBackground> createState() => _NavigationBackgroundState();
}

class _NavigationBackgroundState extends State<NavigationBackground>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _initGif();
    super.initState();
  }

  void _initGif() async {
    await BaseController.navigationController.initGifController(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BaseController.navigationController.repeatGif();
    });
  }

  @override
  void dispose() {
    BaseController.navigationController.gifController.value?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        child: GifImage(
          image: const AssetImage("assets/images/background.gif"),
          controller: BaseController.navigationController.gifController.value!,
          fit: ResponsiveBreakpoints.of(context).isDesktop
              ? BoxFit.fill
              : BoxFit.fitHeight,
          width: SizeUtils.getWidth(context),
          height: SizeUtils.getHeight(context),
        ),
      );
}
