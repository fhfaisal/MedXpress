import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/empty_page.dart';
import 'package:medxpress/app/modules/home/controllers/home_controller.dart';
import 'package:medxpress/app/modules/home/views/home_view.dart';
import 'package:medxpress/app/modules/myAccount/controllers/my_account_controller.dart';
import 'package:medxpress/app/modules/myAccount/views/my_account_view.dart';
import 'package:medxpress/app/modules/myOrder/controllers/my_order_controller.dart';
import 'package:medxpress/app/modules/myOrder/views/my_order_view.dart';
import 'package:medxpress/app/modules/notification/controllers/notification_controller.dart';
import 'package:medxpress/app/modules/notification/views/notification_view.dart';
import 'package:medxpress/app/modules/prescription/controllers/prescription_controller.dart';
import 'package:medxpress/app/modules/prescription/views/prescription_view.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: getPage(controller.selectedIndex.value),
        ),
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
      Get.put(NotificationController());
      return const NotificationView();
    case 2:
      Get.put(MyOrderController());
      return const MyOrderView();
    case 3:
      Get.put(PrescriptionController());
      return const PrescriptionView();
    case 4:
      Get.put(MyAccountController());
      return const MyAccountView();
    default:
      return EmptyPage(
        buttonText: 'Back'.tr,
        title: 'Error'.tr,
        subtitle: 'Unexpected error'.tr,
        isButton: false,
      );
  }
}
