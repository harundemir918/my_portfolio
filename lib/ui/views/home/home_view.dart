/*
Author: Harun Demir
Date: 28.06.2023
*/

import 'package:flutter/material.dart';

import 'components/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) => const Scaffold(
        body: HomeBody(),
      );
}
