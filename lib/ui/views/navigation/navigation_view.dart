import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/base/base_controller.dart';
import '../../widgets/drawer_widget.dart';
import 'components/navigation_body.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        // appBar: const NavigationAppBar(),
        extendBodyBehindAppBar:
            BaseController.navigationController.pageIndex.value != 0,
        endDrawer: !ResponsiveBreakpoints.of(context).isDesktop
            ? const DrawerWidget()
            : null,
        body: const NavigationBody(),
      );
}
