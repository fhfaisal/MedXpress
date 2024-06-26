
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: (value) => controller.updatePageIndicator(value),
          children: controller.onBoarding,
        ),
        Positioned(
          bottom: AppDeviceUtility.getAppBarHeight() + AppDeviceUtility.getAppBarHeight(),
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems),
            child: Obx(
              () => controller.currentPage.value==controller.onBoarding.length - 1
                  ? ElevatedButton(
                      onPressed: () => controller.onBoardingDone(),
                      child: Text('GetStarted'.tr),
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => controller.skipPage(),
                            child: Text('Skip'.tr),
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceBtwItems),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => controller.nextPage(),
                            child: Text('Next'.tr),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
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
