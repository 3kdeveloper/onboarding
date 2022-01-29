import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:onboading/models/on_boarding_model.dart';
import 'package:get/utils.dart';
import 'package:onboading/views/home/home_screen.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;

  goToNextPage() {
    if (isLastPage) {
      Get.offAll(const HomeScreen());
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnBoardingModel> onBoardingPages = [
    OnBoardingModel(
      image: 'assets/order.png',
      title: 'Order Your Food',
      description: 'Now you can order food any time  right from your mobile.',
    ),
    OnBoardingModel(
      image: 'assets/cook.png',
      title: 'Cooking Safe Food',
      description: 'We are maintain safty and We keep clean while making food.',
    ),
    OnBoardingModel(
      image: 'assets/deliver.png',
      title: 'Quick Delivery',
      description: 'Orders your favorite meals will be  immediately deliver',
    ),
  ];
}
