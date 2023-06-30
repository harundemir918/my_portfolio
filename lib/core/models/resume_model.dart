/*
Author: Harun Demir
Date: 25.12.2022
*/

enum ResumeType { education, experience, language }

class ResumeModel {
  final ResumeType type;
  final String title;
  final String location;
  final String date;
  final String description;

  ResumeModel({
    required this.type,
    required this.title,
    required this.location,
    required this.date,
    required this.description,
  });
}
