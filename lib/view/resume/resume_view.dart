import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart'
    deferred as responsive_framework;

import '../../core/constants/constants.dart';
import '../../core/constants/resume_constants.dart';
import '../../core/models/resume_model.dart';
import '../../core/providers/page_provider.dart';
import '../../core/utils/size_utils.dart';
import '../widgets/portfolio_base_card.dart';

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
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        responsive_framework.loadLibrary(),
      ]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SingleChildScrollView(
            child: PortfolioBaseCard(
              cardBody: _resumeCardBody(),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Wrap _resumeCardBody() {
    return Wrap(
      children: [
        _resumeCardTopSection(),
        _resumeCardBottomSection(),
      ],
    );
  }

  Container _resumeCardTopSection() {
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
      child: _resumeCardTitle(),
    );
  }

  Widget _resumeCardTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        "Resume",
        style: Theme.of(context).textTheme.headline3?.copyWith(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }

  Container _resumeCardBottomSection() {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(kDefaultPadding),
        ),
      ),
      child: responsive_framework.ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        layout: responsive_framework.ResponsiveBreakpoints.of(context)
                .smallerThan(responsive_framework.TABLET)
            ? responsive_framework.ResponsiveRowColumnType.COLUMN
            : responsive_framework.ResponsiveRowColumnType.ROW,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          responsive_framework.ResponsiveRowColumnItem(
            rowFlex: 5,
            columnFlex: 1,
            child: _resumeCardInfoEducation(),
          ),
          responsive_framework.ResponsiveRowColumnItem(
            rowFlex: 1,
            columnFlex: 1,
            child: const SizedBox.shrink(),
          ),
          responsive_framework.ResponsiveRowColumnItem(
            rowFlex: 5,
            columnFlex: 1,
            child: _resumeCardInfoExperience(),
          ),
        ],
      ),
    );
  }

  Widget _resumeCardInfoTitle(String title) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontWeight: FontWeight.bold),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _resumeCardInfoEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _resumeCardInfoTitle("Education"),
        Column(
          children: resumeEducationList
              .map(
                (edu) => _resumeListCard(edu),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _resumeCardInfoExperience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _resumeCardInfoTitle("Experience"),
        Column(
          children: resumeExperienceList
              .map(
                (exp) => _resumeListCard(exp),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _resumeListCard(ResumeModel resumeModel) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: kShadowColor,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _resumeListCardTitle(resumeModel),
            _resumeListCardDetails(resumeModel),
            _resumeListCardDescription(resumeModel),
          ],
        ),
      ),
    );
  }

  Padding _resumeListCardTitle(ResumeModel resumeModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Text(
        resumeModel.type == ResumeType.education
            ? resumeModel.location
            : resumeModel.title,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding _resumeListCardDescription(ResumeModel resumeModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Text(
        resumeModel.description,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Padding _resumeListCardDetails(ResumeModel resumeModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: responsive_framework.ResponsiveRowColumn(
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        layout: responsive_framework.ResponsiveBreakpoints.of(context)
                .smallerThan(responsive_framework.DESKTOP)
            ? responsive_framework.ResponsiveRowColumnType.COLUMN
            : responsive_framework.ResponsiveRowColumnType.ROW,
        children: [
          responsive_framework.ResponsiveRowColumnItem(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Text(
                    resumeModel.type == ResumeType.education
                        ? resumeModel.title
                        : resumeModel.location,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: VerticalDivider(
                      thickness: 1,
                      width: 5,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
          ),
          responsive_framework.ResponsiveRowColumnItem(
            child: Text(resumeModel.date),
          ),
        ],
      ),
    );
  }
}
