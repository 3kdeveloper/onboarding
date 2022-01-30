import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/utils/constant.dart';

Widget buildOnBoardingBody({
  required int index,
  required String imagePath,
  required String title,
  required String description,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Get.height * 0.03),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: Get.height * 0.1),
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: Get.height * 0.45,
        ),
        SizedBox(height: Get.height * 0.06),
        Text(
          title,
          style: kTitleTextStyle,
        ),
        SizedBox(height: Get.height * 0.02),
        Text(
          description,
          textAlign: TextAlign.center,
          style: kDescriptionTextStyle,
        ),
      ],
    ),
  );
}
