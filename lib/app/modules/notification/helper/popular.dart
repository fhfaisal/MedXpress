import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../controllers/notification_controller.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class PopularNotification extends StatelessWidget {
  const PopularNotification({super.key,required this.controller});
  final NotificationController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.separated(
      itemCount: controller.promotionNotification.length,
      separatorBuilder: (context, index) => const SizedBox(height: AppSizes.spaceBtwItems4),
      itemBuilder: (context, index) {
        final notification = controller.promotionNotification.elementAt(index);
        return ListTile(
          tileColor: notification.open ? AppColors.primary5 : AppColors.primary10,
          shape: Border.all(color: AppColors.primary10),
          onTap: () => controller.markAsRead(index),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(notification.icon),
              notification.open ? const SizedBox() : const Icon(Icons.circle, color: AppColors.bgAccent, size: 10),
            ],
          ),
          title: Text(
            notification.title,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.textSecondary),
          ),
          subtitle: Text(
            notification.date,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10),
          ),
        );
      },
    ));
  }
}