/*
Author: Harun Demir
Date: 20.12.2022
*/

import 'package:flutter/material.dart';

import '../models/contact_model.dart';

const String appName = "Harun Demir";
const String jobTitle = "Flutter Developer";
const String jobDescription =
    "I graduated from the Software Engineering program at Firat University's Faculty of Technology. In 2018-2019, I studied at the Katowice Information Technology Institute in Poland as part of the Erasmus program. I have over three years of experience as a Mobile Developer and have been developing cross-platform apps with Flutter for the past two years.";

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

const Color kPrimaryColor = Colors.orange;
const Color kWhiteColor = Colors.white;
const Color kBlackColor = Colors.black;
const Color kShadowColor = Colors.black12;

const double appMinWidth = 300;
const double appMaxWidth = 1200;
const double mobileLargeMinWidth = 340;
const double tabletMinWidth = 768;
const double desktopMinWidth = 992;

const double kDefaultPadding = 10;
const double kDefaultIconSize = 48;
