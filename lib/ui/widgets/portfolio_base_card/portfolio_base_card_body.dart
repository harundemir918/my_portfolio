/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';
import '../../../core/constants/constants.dart';

class PortfolioBaseCardBody extends StatelessWidget {
  final Widget cardBody;

  const PortfolioBaseCardBody({required this.cardBody, super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
          margin: const EdgeInsets.all(kDefaultPadding * 2),
          decoration: BoxDecoration(
            color: kBlackColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(kDefaultPadding),
            boxShadow: [
              BoxShadow(
                color: BaseController.colorController.shadowColor.value,
                blurRadius: 10,
                spreadRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: cardBody,
        ),
      );
}
