import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/models/on_boarding_model.dart';
import 'package:onboading/utils/assets_paths.dart';
import 'package:onboading/views/home/home_screen.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;

  void goToNextPage() {
    if (!isLastPage) {
      pageController.nextPage(
        duration: const Duration(microseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Get.offAll(() => const HomeScreen());
    }
  }

  List<OnBoardingModel> onBoardingPages = [
    OnBoardingModel(
      imagePath: AssetPaths.kOnBoarding01,
      title: 'Order Your Food',
      description: 'Now you can order food any time  right from your mobile.',
    ),
    OnBoardingModel(
      imagePath: AssetPaths.kOnBoarding02,
      title: 'Cooking Safe Food',
      description:
          'We are maintain safety and We keep clean while making food.',
    ),
    OnBoardingModel(
      imagePath: AssetPaths.kOnBoarding03,
      title: 'Quick Delivery',
      description: 'Orders your favorite meals will be  immediately deliver',
    ),
  ];
}
