import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/controllers/on_boarding_controller.dart';
import 'package:onboading/utils/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget buildAnimatedDotIndicator() {
  return Obx(
    () => SizedBox(
      height: Get.height * 0.001,
      width: Get.height * 0.001,
      child: AnimatedSmoothIndicator(
        activeIndex: Get.find<OnBoardingController>().selectedPageIndex.value,
        count: Get.find<OnBoardingController>().onBoardingPages.length,
        effect: const JumpingDotEffect(
          activeDotColor: AppColors.kPrimaryColor,
          dotHeight: 6,
        ),
      ),
    ),
  );
}
