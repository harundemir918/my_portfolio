import 'package:flutter/material.dart';

import '../../widgets/portfolio_base_card/portfolio_base_card.dart';
import 'components/portfolio_body.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  @override
  Widget build(BuildContext context) => const SingleChildScrollView(
        child: PortfolioBaseCard(
          title: "PORTFOLIO",
          cardBody: PortfolioBody(),
        ),
      );
}
