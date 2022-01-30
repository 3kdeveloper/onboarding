import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/controllers/on_boarding_controller.dart';
import 'package:onboading/utils/color.dart';
import 'package:onboading/utils/constant.dart';

Widget buildNextButton() {
  return TextButton(
    onPressed: () => Get.find<OnBoardingController>().goToNextPage(),
    child: Obx(
      () => Text(
          Get.find<OnBoardingController>().isLastPage ? 'GET STARTED' : 'NEXT',
          style: kTitleTextStyle.copyWith(
            color: AppColors.kPrimaryColor,
          )),
    ),
  );
}
