import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../core/constants/constants.dart';
import '../../core/providers/page_provider.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/responsive_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageProvider _pageProvider = PageProvider();

  @override
  void didChangeDependencies() {
    final pageProvider = Provider.of<PageProvider>(context);
    if (_pageProvider != pageProvider) {
      _pageProvider = pageProvider;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const ResponsiveAppBar(),
        endDrawer: !ResponsiveBreakpoints.of(context).isDesktop
            ? const DrawerWidget()
            : null,
        body: _homeBody(),
      );

  Widget _homeBody() => pageList[_pageProvider.pageIndex].page;
}
