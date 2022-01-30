import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/controllers/on_boarding_controller.dart';
import 'package:onboading/utils/color.dart';
import 'package:onboading/utils/constant.dart';
import 'package:onboading/views/home/home_screen.dart';

Widget buildSkipButton() {
  return Align(
    alignment: Alignment.topRight,
    child: Padding(
      padding: EdgeInsets.only(right: Get.width * 0.02),
      child: TextButton(
        onPressed: () => Get.offAll(() => const HomeScreen()),
        child: Obx(
          () => Text(
            Get.find<OnBoardingController>().isLastPage ? '' : 'SKIP',
            style: kTitleTextStyle.copyWith(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ),
    ),
  );
}
