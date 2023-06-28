import 'package:flutter/material.dart';

import '../../../core/base/base_controller.dart';
import 'portfolio_base_card_body.dart';

class PortfolioBaseCard extends StatefulWidget {
  final Widget cardBody;

  const PortfolioBaseCard({
    required this.cardBody,
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioBaseCard> createState() => _PortfolioBaseCardState();
}

class _PortfolioBaseCardState extends State<PortfolioBaseCard> {
  @override
  void initState() {
    BaseController.colorController.initTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => PortfolioBaseCardBody(
        cardBody: widget.cardBody,
      );
}
