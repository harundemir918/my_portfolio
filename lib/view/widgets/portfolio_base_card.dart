import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class PortfolioBaseCard extends StatefulWidget {
  final Widget cardBody;

  const PortfolioBaseCard({
    required this.cardBody,
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioBaseCard> createState() => _PortfolioBaseCardState();
}

class _PortfolioBaseCardState extends State<PortfolioBaseCard> {
  Color color = kShadowColor;
  late Timer _timer;

  @override
  void initState() {
    _initTimer();
    super.initState();
  }

  void _initTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) => _changeShadowColor(),
    );
  }

  void _changeShadowColor() {
    final random = Random();
    color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _baseCard(context);

  Widget _baseCard(BuildContext context) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        margin: const EdgeInsets.all(kDefaultPadding * 2),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: widget.cardBody,
      );
}
