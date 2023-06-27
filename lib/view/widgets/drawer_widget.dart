/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/constants/constants.dart';
import '../../core/providers/page_provider.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
  Widget build(BuildContext context) => Drawer(
        backgroundColor: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          child: Column(
            children: pageList
                .map(
                  (item) => _appBarActionsItem(
                    context,
                    index: item.index,
                    title: item.title,
                  ),
                )
                .toList(),
          ),
        ),
      );

  Widget _appBarActionsItem(
    BuildContext context, {
    required int index,
    required String title,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: TextButton(
          onPressed: () {
            _pageProvider.changePage(index);
            Scaffold.of(context).closeEndDrawer();
          },
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: kWhiteColor,
                  fontWeight: _pageProvider.pageIndex == index
                      ? FontWeight.bold
                      : FontWeight.w400,
                ),
          ),
        ),
      );
}
