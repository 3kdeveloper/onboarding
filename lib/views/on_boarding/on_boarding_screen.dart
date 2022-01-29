import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboading/controllers/on_boarding_controller.dart';
import 'package:onboading/utils/constant.dart';
import 'package:onboading/views/home/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final _onBoardingController = OnBoardingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _onBoardingController.pageController,
          itemCount: _onBoardingController.onBoardingPages.length,
          onPageChanged: _onBoardingController.selectedPageIndex,
          itemBuilder: (context, index) {
            return Padding(
              padding: kDefaultPadding,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: size.height * 0.5,
                          width: double.infinity,
                          child: Image.asset(_onBoardingController
                              .onBoardingPages[index].image)),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        _onBoardingController.onBoardingPages[index].title,
                        style: kTitleTextStyle,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        _onBoardingController
                            .onBoardingPages[index].description,
                        style: kDescriptionTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Positioned(
                      right: 0.0,
                      top: size.height * 0.015,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            // side: !_onBoardingController.isLastPage
                            //     ? const BorderSide(
                            //         width: 0.7, color: Colors.blue)
                            //     : const BorderSide(
                            //         width: 0.0,
                            //       ),
                          ),
                          onPressed: () => Get.offAll(const HomeScreen()),
                          child: Obx(() => Text(
                              !_onBoardingController.isLastPage
                                  ? 'SKIP'
                                  : '')))),
                  Positioned(
                    bottom: size.height * 0.03,
                    left: 0.0,
                    child: Row(
                      children: List.generate(
                        _onBoardingController.onBoardingPages.length,
                        (index) => Obx(() => Container(
                              margin: const EdgeInsets.all(4),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: _onBoardingController
                                            .selectedPageIndex.value ==
                                        index
                                    ? Colors.red
                                    : Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: size.height * 0.015,
                      right: 0.0,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            side: const BorderSide(
                                width: 0.7, color: Colors.blue),
                          ),
                          onPressed: _onBoardingController.goToNextPage,
                          child: Obx(() => Text(_onBoardingController.isLastPage
                              ? 'START'
                              : 'NEXT')))),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
