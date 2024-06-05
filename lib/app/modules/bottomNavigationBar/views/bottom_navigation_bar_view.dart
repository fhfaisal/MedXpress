import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/empty_page.dart';
import 'package:medxpress/app/modules/home/controllers/home_controller.dart';
import 'package:medxpress/app/modules/home/views/home_view.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: getPage(controller.selectedIndex.value),
        bottomNavigationBar: Card(
          margin: const EdgeInsets.all(0),
          elevation: 15,
          surfaceTintColor: AppColors.white,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(AppSizes.borderRadiusXXL), topLeft: Radius.circular(AppSizes.borderRadiusXXL)),
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
              onTap: (value) => controller.changeTabIndex(value),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppIconStrings.home),
                    label: "Home",
                    activeIcon: SvgPicture.asset(AppIconStrings.homeActive),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIconStrings.notification),
                  label: "Notification",
                  activeIcon: SvgPicture.asset(
                    AppIconStrings.notificationActive,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIconStrings.myOrder),
                  label: "My Order",
                  activeIcon: SvgPicture.asset(AppIconStrings.myOrderActive),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIconStrings.prescription),
                  label: "Prescription",
                  activeIcon: SvgPicture.asset(AppIconStrings.prescriptionActive),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIconStrings.myAccount),
                  label: "My Account",
                  activeIcon: SvgPicture.asset(AppIconStrings.myAccountActive),
                ),
              ],
            ),
          ),
        )));
  }
}

Widget getPage(int index) {
  switch (index) {
    case 0:
      Get.put(HomeController());
      return const HomeView();
    case 1:
      return EmptyPage(
        buttonText: 'Back'.tr,
        title: 'Under Developing'.tr,
        subtitle: 'This page under the developing process'.tr,
        isButton: false,
      );
    default:
      return Center(
        child: Text("something_wrong".tr),
      );
  }
}
