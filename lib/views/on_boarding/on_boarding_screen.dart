import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/controllers/on_boarding_controller.dart';
import 'package:onboading/utils/constant.dart';
import 'package:onboading/views/on_boarding/components/build_animated_dot_indicator.dart';
import 'package:onboading/views/on_boarding/components/build_next_button.dart';
import 'package:onboading/views/on_boarding/components/build_on_broading_body.dart';
import 'package:onboading/views/on_boarding/components/build_skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final _onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          PageView.builder(
              itemCount: _onBoardingController.onBoardingPages.length,
              onPageChanged: _onBoardingController.selectedPageIndex,
              controller: _onBoardingController.pageController,
              itemBuilder: (context, index) {
                return buildOnBoardingBody(
                  index: index,
                  imagePath:
                      _onBoardingController.onBoardingPages[index].imagePath,
                  title: _onBoardingController.onBoardingPages[index].title,
                  description:
                      _onBoardingController.onBoardingPages[index].description,
                );
              }),

          /// Skip Button
          buildSkipButton(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  /// Dot Indicator
                  buildAnimatedDotIndicator(),
                  const Spacer(),

                  /// Next Button
                  buildNextButton(),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
