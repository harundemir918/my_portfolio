/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../core/constants/constants.dart';
import '../../core/constants/resume_constants.dart';
import '../../core/providers/page_provider.dart';
import '../../core/utils/utils.dart';
import '../widgets/portfolio_base_card.dart';
import '../widgets/type_writer_text.dart';

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
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        responsive_framework.loadLibrary(),
      ]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SingleChildScrollView(
            child: PortfolioBaseCard(
              cardBody: _aboutCardBody(context),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Wrap _aboutCardBody(BuildContext context) {
    return Wrap(
      children: [
        _aboutCardTopSection(context),
        _aboutCardBottomSection(context),
      ],
    );
  }

  Container _aboutCardTopSection(BuildContext context) {
    return Container(
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
      child: responsive_framework.ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        layout: responsive_framework.ResponsiveBreakpoints.of(context)
                .smallerThan(responsive_framework.TABLET)
            ? responsive_framework.ResponsiveRowColumnType.COLUMN
            : responsive_framework.ResponsiveRowColumnType.ROW,
        children: [
          responsive_framework.ResponsiveRowColumnItem(
              child: _aboutCardImage(context)),
          responsive_framework.ResponsiveRowColumnItem(
            child: Column(
              children: [
                _aboutCardTitle(context),
                _aboutCardDescription(context),
                const SizedBox(height: kDefaultPadding * 2),
                _aboutCardContactOptions(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect _aboutCardImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kDefaultPadding),
      child: Image.asset(
        profileUrl,
        width: responsive_framework.ResponsiveBreakpoints.of(context)
                .smallerThan(responsive_framework.TABLET)
            ? 200
            : 270,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _aboutCardTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        appName,
        style: Theme.of(context).textTheme.headline3?.copyWith(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _aboutCardDescription(BuildContext context) {
    return const TypeWriterText();
  }

  Widget _aboutCardContactOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: contactList
          .map(
            (contact) => _aboutCardContactItem(
              icon: contact.icon,
              url: contact.url,
            ),
          )
          .toList(),
    );
  }

  Widget _aboutCardContactItem({required String icon, required String url}) {
    return SizedBox(
      width: kDefaultIconSize,
      height: kDefaultIconSize,
      child: IconButton(
        onPressed: () => Utils.navigateToUrl(url),
        icon: CircleAvatar(
          backgroundColor: kWhiteColor,
          child: SvgPicture.asset(
            icon,
            width: kDefaultIconSize / 2,
            height: kDefaultIconSize / 2,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Container _aboutCardBottomSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(kDefaultPadding),
        ),
      ),
      child: responsive_framework.ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
        layout: responsive_framework.ResponsiveBreakpoints.of(context)
                .smallerThan(responsive_framework.TABLET)
            ? responsive_framework.ResponsiveRowColumnType.COLUMN
            : responsive_framework.ResponsiveRowColumnType.ROW,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          responsive_framework.ResponsiveRowColumnItem(
            rowFlex: 4,
            columnFlex: 1,
            child: _aboutCardInfoTop(context),
          ),
          responsive_framework.ResponsiveRowColumnItem(
            rowFlex: 1,
            columnFlex: 1,
            child: const SizedBox.shrink(),
          ),
          responsive_framework.ResponsiveRowColumnItem(
            rowFlex: 4,
            columnFlex: 1,
            child: _aboutCardInfoBottom(context),
          ),
        ],
      ),
    );
  }

  Widget _aboutCardInfoTop(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _aboutCardInfoTitle(context),
        _aboutCardInfoSummary(),
      ],
    );
  }

  Widget _aboutCardInfoTitle(BuildContext context) {
    return Text(
      "About",
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
    );
  }

  Padding _aboutCardInfoSummary() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        jobDescription,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _aboutCardInfoBottom(BuildContext context) {
    return Column(
      children: [
        _aboutCardBottomInfoRow(
          context,
          title: "Address",
          description: "Istanbul, Turkiye",
        ),
        _aboutCardBottomInfoRow(
          context,
          title: "Job Status",
          description: "Fulltime Developer",
        ),
      ],
    );
  }

  Padding _aboutCardBottomInfoRow(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              flex: responsive_framework.ResponsiveBreakpoints.of(context)
                      .smallerThan(responsive_framework.TABLET)
                  ? 2
                  : 3,
              child: Text(description)),
        ],
      ),
    );
  }
}
