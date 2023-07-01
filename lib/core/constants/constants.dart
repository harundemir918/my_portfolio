/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';

import '../../ui/views/about/about_view.dart';
import '../../ui/views/home/home_view.dart';
import '../../ui/views/portfolio/portfolio_view.dart';
import '../../ui/views/resume/resume_view.dart';
import '../models/page_model.dart';

const String appName = "Harun Demir";

const Color kLightPrimaryColor = Color(0xFFEFA4A0);
const Color kDarkPrimaryColor = Color(0xFF8DB0D5);
const Color kWhiteColor = Colors.white;
const Color kBlackColor = Colors.black;
const Color kShadowColor = Colors.black12;
const Color kTransparentColor = Colors.transparent;
const Color kLightBackgroundColor = kWhiteColor;
const Color kDarkBackgroundColor = Color(0xFF121213);

const double appMinWidth = 300;
const double appMaxWidth = 1200;
const double mobileLargeMinWidth = 340;
const double tabletMinWidth = 768;
const double desktopMinWidth = 992;

const double kDefaultPadding = 10;
const double kDefaultIconSize = 48;

const String lightThemeBackground =
    "https://harundemir.org/assets/assets/html/background_light.html";
const String darkThemeBackground =
    "https://harundemir.org/assets/assets/html/background_dark.html";

List<PageModel> pageList = [
  PageModel(
    index: 0,
    title: "Home",
    page: const HomeView(),
  ),
  PageModel(
    index: 1,
    title: "About",
    page: const AboutView(),
  ),
  PageModel(
    index: 2,
    title: "Resume",
    page: const ResumeView(),
  ),
  PageModel(
    index: 3,
    title: "Portfolio",
    page: const PortfolioView(),
  ),
];
