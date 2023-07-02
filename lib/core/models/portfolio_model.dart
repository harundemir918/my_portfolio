/*
Author: Harun Demir
Date: 26.12.2022
*/

enum PortfolioType { all, own, freelance }

class PortfolioModel {
  final PortfolioType type;
  final String title;
  final String description;
  final String url;
  final List<String> mediaUrls;
  final String date;
  final List<String> techStack;

  PortfolioModel({
    required this.type,
    required this.title,
    required this.url,
    required this.mediaUrls,
    required this.date,
    required this.description,
    required this.techStack,
  });
}
