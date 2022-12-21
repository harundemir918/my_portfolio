import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_scroll_behavior.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/data/page_list.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/responsive_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _pageIndex = 0;

  void _changePage(int index) {
    _pageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(pageIndex: _pageIndex),
      endDrawer: !ResponsiveWrapper.of(context).isDesktop
          ? DrawerWidget(pageIndex: _pageIndex)
          : null,
      body: _homeBody(),
    );
  }

  Widget _homeBody() {
    return PageView.builder(
      scrollBehavior: AppScrollBehavior(),
      itemCount: pageList.length,
      itemBuilder: (context, index) => pageList[index].page,
      onPageChanged: (index) => _changePage(index),
    );
  }
}
