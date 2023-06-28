/*
Author: Harun Demir
Date: 27.06.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/resume_constants.dart';
import 'home_contact_item.dart';

class HomeContactOptions extends StatelessWidget {
  const HomeContactOptions({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: contactList
              .map(
                (contact) => HomeContactItem(
                  icon: contact.icon,
                  url: contact.url,
                ),
              )
              .toList(),
        ),
      );
}
