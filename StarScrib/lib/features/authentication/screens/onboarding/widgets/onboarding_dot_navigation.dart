import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starscrib/features/authentication/conrollers/onboarding/onboarding_controller.dart';
import 'package:starscrib/utils/helpers/device_helpers.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 2.5,
      right: UDeviceHelper.getScreenWidth(context) / 2.5,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0,
        ),
      )
    );
  }
}