import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/portfolio_constants.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../core/constants/constants.dart';
import '../../core/providers/page_provider.dart';
import '../../core/utils/size_utils.dart';
import '../portfolio_detail/portfolio_detail_view.dart';
import '../widgets/portfolio_base_card.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  PageProvider _pageProvider = PageProvider();

  @override
  void didChangeDependencies() {
    final pageProvider = Provider.of<PageProvider>(context);
    if (_pageProvider != pageProvider) {
      _pageProvider = pageProvider;
    }

    super.didChangeDependencies();
  }

  int _getGridViewCrossAxisCount() {
    return responsive_framework.ResponsiveBreakpoints.of(context)
            .smallerThan(responsive_framework.DESKTOP)
        ? responsive_framework.ResponsiveBreakpoints.of(context)
                .smallerThan(responsive_framework.TABLET)
            ? 1
            : 2
        : 3;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        responsive_framework.loadLibrary(),
      ]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SingleChildScrollView(
            child: PortfolioBaseCard(
              cardBody: _portfolioCardBody(),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Wrap _portfolioCardBody() {
    return Wrap(
      children: [
        _portfolioCardTopSection(),
        _portfolioCardBottomSection(),
      ],
    );
  }

  Container _portfolioCardTopSection() {
    return Container(
      width: SizeUtils.getWidth(context),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2,
        vertical: kDefaultPadding * 4,
      ),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kDefaultPadding),
        ),
      ),
      child: _portfolioCardTitle(),
    );
  }

  Widget _portfolioCardTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        "Portfolio",
        style: Theme.of(context).textTheme.headline3?.copyWith(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }

  Container _portfolioCardBottomSection() {
    return Container(
      height: SizeUtils.getDynamicHeight(context, 0.65),
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(kDefaultPadding),
        ),
      ),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: portfolioList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2 / 3,
          crossAxisCount: _getGridViewCrossAxisCount(),
          mainAxisSpacing: kDefaultPadding / 2,
          crossAxisSpacing: kDefaultPadding / 2,
        ),
        itemBuilder: (context, index) => _portfolioProjectListCard(
          image: portfolioList[index].mediaUrls.first,
        ),
      ),
    );
  }

  TextButton _portfolioProjectListCard({required String image}) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PortfolioDetailView(),
          ),
        );
      },
      child: SizedBox(
        child: Image.network(image),
      ),
    );
  }
}
