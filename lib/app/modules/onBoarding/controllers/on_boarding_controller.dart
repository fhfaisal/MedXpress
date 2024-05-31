import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  Rx<int> currentPage=0.obs;

  void updatePageIndicator(index) {
    currentPage.value=index;
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void skipPage() {
    currentPage.value=3;
    pageController.jumpToPage(3);
  }
}
