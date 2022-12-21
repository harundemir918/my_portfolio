import 'package:flutter/material.dart';

import '../widgets/portfolio_base_card.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: PortfolioBaseCard(
        cardBody: Center(child: Text("Resume")),
      ),
    );
  }
}
