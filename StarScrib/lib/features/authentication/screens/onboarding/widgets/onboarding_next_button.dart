import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starscrib/common/widgets/button/elevated_button.dart';
import 'package:starscrib/features/authentication/conrollers/onboarding/onboarding_controller.dart';
import 'package:starscrib/utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(() => Text(controller.currentIndex.value == 2 ? 'Get Started' : 'Next'))
      )
    );
  }
}