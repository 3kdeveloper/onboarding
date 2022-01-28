import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashDuration() {
    Timer(
      const Duration(seconds: 3),
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
