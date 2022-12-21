/*
Author: Harun Demir
Date: 21.12.2022
*/

import 'package:url_launcher/url_launcher.dart';

class Utils {
  static void navigateToUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw Exception("Can't launch url: $url");
    }
  }
}
