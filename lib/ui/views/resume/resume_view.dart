import 'package:flutter/material.dart';

import '../../widgets/portfolio_base_card/portfolio_base_card.dart';
import 'components/resume_body.dart';

class ResumeView extends StatefulWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  State<ResumeView> createState() => _ResumeViewState();
}

class _ResumeViewState extends State<ResumeView> {
  @override
  Widget build(BuildContext context) => const SingleChildScrollView(
        child: PortfolioBaseCard(
          title: "RESUME",
          cardBody: ResumeBody(),
        ),
      );
}
