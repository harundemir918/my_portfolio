import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';
import '../about/about_view.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/responsive_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ResponsiveAppBar(),
      endDrawer: !SizeUtils.isDesktop(context) ? const DrawerWidget() : null,
      body: _homeBody(),
    );
  }

  SingleChildScrollView _homeBody() {
    return const SingleChildScrollView(
      child: AboutView(),
    );
  }
}
