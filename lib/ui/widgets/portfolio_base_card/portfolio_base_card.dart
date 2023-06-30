import 'package:flutter/material.dart';

import 'portfolio_base_card_body.dart';

class PortfolioBaseCard extends StatefulWidget {
  final String title;
  final Widget cardBody;

  const PortfolioBaseCard({
    required this.title,
    required this.cardBody,
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioBaseCard> createState() => _PortfolioBaseCardState();
}

class _PortfolioBaseCardState extends State<PortfolioBaseCard> {
  @override
  Widget build(BuildContext context) => PortfolioBaseCardBody(
        title: widget.title,
        cardBody: widget.cardBody,
      );
}
