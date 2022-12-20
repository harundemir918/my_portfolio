/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/size_utils.dart';
import '../layout/responsive_layout.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _aboutCardMobile(context, height: 1.4),
      mobileLarge: _aboutCardMobile(context, height: 1.3),
      tablet: const SizedBox(
          // height: SizeUtils.getDynamicHeight(context, 1.5),
          // child: Container(
          //   margin: const EdgeInsets.all(kDefaultPadding),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(kDefaultPadding),
          //   ),
          //   child: _aboutCardBody(context),
          // ),
          ),
      desktop: const SizedBox(
          // height: SizeUtils.getDynamicHeight(context, 1.5),
          // child: Container(
          //   margin: const EdgeInsets.all(kDefaultPadding),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(kDefaultPadding),
          //   ),
          //   child: _aboutCardBody(context),
          // ),
          ),
    );
  }

  SizedBox _aboutCardMobile(BuildContext context, {double height = 1.6}) {
    return SizedBox(
      height: SizeUtils.getDynamicHeight(context, height),
      child: Container(
        margin: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: _aboutCardBody(context),
      ),
    );
  }

  Column _aboutCardBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: SizeUtils.isMobile(context) ? 60 : 55,
          child: _aboutCardTopSectionVertical(context),
        ),
        Expanded(
          flex: SizeUtils.isMobile(context) ? 40 : 45,
          child: _aboutCardBottomSectionVertical(context),
        ),
      ],
    );
  }

  Container _aboutCardTopSectionVertical(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: SizeUtils.getDynamicHeight(context, 0.05),
      ),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kDefaultPadding),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _aboutCardImage(context),
          const Spacer(),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                  flex: SizeUtils.isMobile(context) ? 2 : 1,
                  child: _aboutCardTitle(context),
                ),
                Expanded(
                  child: aboutCardDescription(context),
                ),
                Expanded(
                  child: _aboutCardContactOptions(context),
                ),
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
        "assets/images/profile.png",
        width: SizeUtils.getDynamicWidth(context, 0.6),
        fit: BoxFit.fitWidth,
      ),
    );
  }

  SizedBox _aboutCardTitle(BuildContext context) {
    return SizedBox(
      width: SizeUtils.getDynamicWidth(
        context,
        SizeUtils.isMobile(context) ? 0.8 : 0.9,
      ),
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

  Center aboutCardDescription(BuildContext context) {
    return Center(
      child: Text(
        "Flutter Developer",
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: kWhiteColor,
              fontWeight: FontWeight.w400,
            ),
      ),
    );
  }

  Container _aboutCardContactOptions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeUtils.getDynamicWidth(context, 0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: _aboutCardContactItem("assets/images/linkedin.svg"),
          ),
          Expanded(
            child: _aboutCardContactItem("assets/images/github.svg"),
          ),
          Expanded(
            child: _aboutCardContactItem("assets/images/stack_overflow.svg"),
          ),
        ],
      ),
    );
  }

  CircleAvatar _aboutCardContactItem(String icon) {
    return CircleAvatar(
      backgroundColor: kWhiteColor,
      child: SvgPicture.asset(
        icon,
        width: 24,
        height: 24,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Container _aboutCardBottomSectionVertical(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(kDefaultPadding),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _aboutCardInfoTitle(context),
          _aboutCardInfoSummary(),
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
      ),
    );
  }

  Text _aboutCardInfoTitle(BuildContext context) {
    return Text(
      "About",
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Padding _aboutCardInfoSummary() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        "I graduated from the Software Engineering program at Firat University's Faculty of Technology. In 2018-2019, I studied at the Katowice Information Technology Institute in Poland as part of the Erasmus program. I have over three years of experience as a Mobile Developer and have been developing cross-platform apps with Flutter for the past two years.",
        textAlign: TextAlign.justify,
      ),
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
        children: [
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: Text(description),
          ),
        ],
      ),
    );
  }
}
