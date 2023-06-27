import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/page_provider.dart';
import '../widgets/portfolio_base_card.dart';
import 'components/resume_body.dart';

class ResumeView extends StatefulWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  State<ResumeView> createState() => _ResumeViewState();
}

class _ResumeViewState extends State<ResumeView> {
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
          cardBody: ResumeBody(),
        ),
      );
}
