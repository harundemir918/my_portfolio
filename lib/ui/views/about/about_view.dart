/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';

import '../../widgets/portfolio_base_card.dart';
import 'components/about_body.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) => const SingleChildScrollView(
        child: PortfolioBaseCard(
          cardBody: AboutBody(),
        ),
      );
}
