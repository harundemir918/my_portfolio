/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';

import '../../widgets/portfolio_base_card/portfolio_base_card.dart';
import 'components/about_body.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SingleChildScrollView(
        child: PortfolioBaseCard(
          title: "ABOUT",
          cardBody: AboutBody(),
        ),
      );
}
