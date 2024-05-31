import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/modules/onBoarding/widgets/on_boarding.dart';
import 'package:medxpress/app/routes/app_pages.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';

class OnBoardingController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  Rx<int> currentPage=0.obs;
  RxList <OnBoarding> onBoarding=[
    OnBoarding(
      image: AppImageStrings.onBoarding1,
      title: 'onBoarding1Title'.tr,
      subtitle: 'onBoarding1Subtitle'.tr
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
      subtitle: 'onBoarding4Subtitle'.tr
    ),
  ].obs;

  void updatePageIndicator(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void skipPage() {
    currentPage.value = onBoarding.length - 1;
    pageController.jumpToPage(onBoarding.length - 1);
  }
  navigateToLogin(){
    Get.toNamed(Routes.LOGIN);
  }
  onBoardingDone(){
    navigateToLogin();
  }
}
