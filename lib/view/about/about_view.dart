/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/page_provider.dart';
import '../widgets/portfolio_base_card.dart';
import 'components/about_body.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
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
  Widget build(BuildContext context) => const SingleChildScrollView(
        child: PortfolioBaseCard(
          cardBody: AboutBody(),
        ),
      );
}
