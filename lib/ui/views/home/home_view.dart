import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../widgets/drawer_widget.dart';
import 'components/home_app_bar.dart';
import 'components/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const HomeAppBar(),
        endDrawer: !ResponsiveBreakpoints.of(context).isDesktop
            ? const DrawerWidget()
            : null,
        body: const HomeBody(),
      );
}
