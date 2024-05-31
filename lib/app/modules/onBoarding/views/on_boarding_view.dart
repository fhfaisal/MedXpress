import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/device/device_utility.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';
import '../controllers/on_boarding_controller.dart';
import '../widgets/on_boarding.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: (value) => controller.updatePageIndicator,
          children: [
            OnBoarding(
              image: AppImageStrings.onBoarding1,
              title: 'onBoarding1Title'.tr,
              subtitle: 'onBoarding1Subtitle'.tr,
            ),
            OnBoarding(
              image: AppImageStrings.onBoarding2,
              title: 'onBoarding2Title'.tr,
              subtitle: 'onBoarding2Subtitle'.tr,
            ),
            OnBoarding(
              image: AppImageStrings.onBoarding3,
              title: 'onBoarding3Title'.tr,
              subtitle: 'onBoarding3Subtitle'.tr,
            ),
            OnBoarding(
              image: AppImageStrings.onBoarding4,
              title: 'onBoarding4Title'.tr,
              subtitle: 'onBoarding4Subtitle'.tr,
            ),
          ],
        ),
        Positioned(
            bottom: AppDeviceUtility.getAppBarHeight() + AppDeviceUtility.getAppBarHeight(),
            left: 0, //AppSizes.defaultSpace,
            right: 0, //AppSizes.defaultSpace,
            child: Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems),
              child: controller.currentPage.value==3?
             Obx(() => Row(
               children: [
                 Expanded(child: ElevatedButton(onPressed: () => controller.skipPage(), child: const Text('SKIP'))),
                 const SizedBox(
                   width: AppSizes.spaceBtwItems,
                 ),
                 Expanded(
                     child: OutlinedButton(
                         onPressed: () => controller.nextPage(),
                         child: const Text('Next'))),
               ],
             )): OutlinedButton(
                  onPressed: () => controller.nextPage(),
                  child: const Text('Get Started')),
            ))),
        Positioned(
            bottom: AppSizes.appBarHeight,
            left: 0,
            right: 0,
            child: Center(
                child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 4,
              effect: const ExpandingDotsEffect(activeDotColor: AppColors.primary, dotHeight: 10, dotWidth: 10),
            )))
      ],
    ));
  }
}
