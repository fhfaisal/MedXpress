import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../helper/all.dart';
import '../helper/update.dart';
import '../helper/popular.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notification'),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(AppSizes.tabBarHeight),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              decoration: BoxDecoration(
                color: AppColors.primary5,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(AppSizes.borderRadiusLg),
                  topLeft: Radius.circular(AppSizes.borderRadiusLg),
                )
              ), // Set the background color for the TabBar here
              child: TabBar(
                dividerColor: AppColors.primary50,
                labelStyle: Theme.of(context).textTheme.titleMedium,
                tabs: const [
                  Tab(text: 'All'),
                  Tab(text: 'Promotion'),
                  Tab(text: 'Update'),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(AppSizes.defaultSpace, AppSizes.spaceBtwItems8, AppSizes.defaultSpace, AppSizes.defaultSpace),
          child: TabBarView(
            children: [
              AllNotification(controller: controller),
              PopularNotification(controller: controller),
              UpdateNotification(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}



