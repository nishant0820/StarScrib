import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starscrib/common/widgets/button/elevated_button.dart';
import 'package:starscrib/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:starscrib/utils/constants/images.dart';
import 'package:starscrib/utils/constants/sizes.dart';
import 'package:starscrib/utils/constants/texts.dart';
import 'package:starscrib/utils/helpers/device_helpers.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              children: [
                OnBoardingPage(animation: UImages.onboarding1Animation, title: UTexts.onboardingTitle1, subTitle: UTexts.onboardingSubTitle1),
                OnBoardingPage(animation: UImages.onboarding2Animation, title: UTexts.onboardingTitle2, subTitle: UTexts.onboardingSubTitle2),
                OnBoardingPage(animation: UImages.onboarding3Animation, title: UTexts.onboardingTitle3, subTitle: UTexts.onboardingSubTitle3),
              ],
            ),
            OnBoardingDotNavigation(),
            OnboardingNextButton(),
            Positioned(
              top: UDeviceHelper.getAppBarHeight(),
              right: 0,
              child: TextButton(
                onPressed: (){},
                child: Text('Skip')
              )
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
        onPressed: (){},
        child: Text('Next')
      )
    );
  }
}


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 2.5,
      right: UDeviceHelper.getScreenWidth(context) / 2.5,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0,
        ),
      )
    );
  }
}