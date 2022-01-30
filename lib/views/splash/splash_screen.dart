import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/views/on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashDuration() {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offAll(() => OnBoardingScreen());
      },
    );
  }

  @override
  void initState() {
    super.initState();
    splashDuration();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'On Boarding',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
