/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../core/constants/resume_constants.dart';
import 'about_contact_item.dart';

class AboutContactOptions extends StatelessWidget {
  const AboutContactOptions({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: contactList
            .map(
              (contact) => AboutContactItem(
                icon: contact.icon,
                url: contact.url,
              ),
            )
            .toList(),
      );
}
