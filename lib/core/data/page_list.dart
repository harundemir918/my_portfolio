/*
Author: Harun Demir
Date: 21.12.2022
*/

import '../../view/about/about_view.dart';
import '../../view/portfolio/portfolio_view.dart';
import '../../view/resume/resume_view.dart';
import '../models/page_model.dart';

List<PageModel> pageList = [
  PageModel(
    index: 0,
    title: "About",
    page: const AboutView(),
  ),
  PageModel(
    index: 1,
    title: "Resume",
    page: const ResumeView(),
  ),
  PageModel(
    index: 2,
    title: "Portfolio",
    page: const PortfolioView(),
  ),
];
