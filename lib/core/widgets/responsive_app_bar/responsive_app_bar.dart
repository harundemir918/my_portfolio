import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../base/base_controller.dart';
import 'responsive_desktop_app_bar.dart';
import 'responsive_mobile_app_bar.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      ResponsiveBreakpoints.of(context).isDesktop
          ? Obx(
              () => BaseController.navigationController.pageIndex.value != 0
                  ? const ResponsiveDesktopAppBar()
                  : const SizedBox.shrink(),
            )
          : const ResponsiveMobileAppBar();
}
