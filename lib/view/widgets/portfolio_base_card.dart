import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class PortfolioBaseCard extends StatelessWidget {
  final Widget cardBody;
  const PortfolioBaseCard({
    Key? key,
    required this.cardBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _baseCard(context);
  }

  SizedBox _baseCard(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(kDefaultPadding * 2),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: cardBody,
      ),
    );
  }
}
