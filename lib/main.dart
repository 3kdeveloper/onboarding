import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/views/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter OnBoarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingScreen(),
    );
  }
}
