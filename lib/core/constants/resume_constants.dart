/*
Author: Harun Demir
Date: 25.12.2022
*/

import '../models/contact_model.dart';
import '../models/resume_model.dart';

const List<String> jobTitles = [
  "Flutter Developer",
  "Mobile Developer",
  "Software Engineer",
];
const String jobDescription =
    "I graduated from the Software Engineering program at Firat University's Faculty of Technology. In 2018-2019, I studied at the Katowice Information Technology Institute in Poland as part of the Erasmus program. I have over four years of experience as a Mobile Developer and have been developing cross-platform apps with Flutter for the past three years. I have 3 apps in Google Play Store.";
const String profileUrl = "assets/images/profile.webp";

List<ContactModel> contactList = [
  ContactModel(
    icon: "assets/images/linkedin.svg",
    url: "https://www.linkedin.com/in/harundemir918/",
  ),
  ContactModel(
    icon: "assets/images/github.svg",
    url: "https://github.com/harundemir918",
  ),
  ContactModel(
    icon: "assets/images/stack_overflow.svg",
    url: "https://stackoverflow.com/users/13064606/harundemir918",
  ),
];

List<ResumeModel> resumeExperienceList = [
  ResumeModel(
    type: ResumeType.experience,
    title: "Flutter Developer",
    description:
        "• Took part in the development of Sportist app that has over 100k+ users."
        "\n• Added new functionalities and fixed bugs based on feedbacks."
        "\n• Fixed performance issue on listing exercises with GIFs."
        "\n• Implemented running exercises and drawing line on map from start point to end point."
        "\n• Implemented onboarding process to get basic info about users."
        "\n• Added light-dark theme switch using Provider."
        "\n• Integrated basic GetX structure for future uses with the help of supervisor teammate.",
    location: "Sportist",
    date: "October 2021 - December 2022",
  ),
  ResumeModel(
    type: ResumeType.experience,
    title: "Freelancer Flutter Developer",
    description: "• Developing and maintaining mobile apps"
        "\n• Deployment of mobile apps",
    location: "Cytechnoware",
    date: "January 2021 - Current",
  ),
  ResumeModel(
    type: ResumeType.experience,
    title: "Intern",
    description: "• Developed food recipe app with Flutter and Laravel",
    location: "Firat University",
    date: "July 2021 - September 2021",
  ),
  ResumeModel(
    type: ResumeType.experience,
    title: "Intern",
    description: "• Developed medical prescription app with Flutter"
        "\n• Implemented push notifications using OneSignal",
    location: "Perasis",
    date: "November 2020 - February 2021",
  ),
];

List<ResumeModel> resumeEducationList = [
  ResumeModel(
    type: ResumeType.education,
    location: "Firat University",
    title: "Software Engineering",
    date: "September 2017 - October 2021",
    description: "\n• GPA: 3,36/4,00",
  ),
  ResumeModel(
    type: ResumeType.education,
    location: "Katowice Institute of Information Technologies",
    title: "Erasmus+ - Informatics",
    date: "October 2018 - February 2019",
    description: "\n• GPA: 4,86/5,00",
  ),
];

List<ResumeModel> resumeLanguageList = [
  ResumeModel(
    type: ResumeType.language,
    location: "",
    title: "Turkish",
    date: "",
    description: "\n• Native",
  ),
  ResumeModel(
    type: ResumeType.language,
    location: "",
    title: "English",
    date: "",
    description: "\n• Upper-Intermediate",
  ),
  ResumeModel(
    type: ResumeType.language,
    location: "",
    title: "German",
    date: "",
    description: "\n• Beginner",
  ),
];
