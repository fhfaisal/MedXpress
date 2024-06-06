import 'package:get/get.dart';
import 'package:medxpress/app/modules/notification/model/notification_model.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';

class NotificationController extends GetxController {
  RxList<NotificationItem> allNotification = <NotificationItem>[
    NotificationItem(
        icon: AppIconStrings.notificationPromotion,
        title: 'Dear Customer, our app will undergo scheduled maintenance.',
        date: 'Aug 12, 2020 at 12:08 PM',
        open: true),
    NotificationItem(
        icon: AppIconStrings.notificationPromotion,
        title: 'Important Security Update: We’ve enhanced our security protocols to protect your personal data better.',
        date: 'Aug 12, 2020 at 12:08 PM',
        open: false),
    NotificationItem(
        icon: AppIconStrings.bellNotificationOutline,
        title: 'Thank you for your order! Your order #12345 has been confirmed and is being processed.',
        date: 'Aug 12, 2020 at 12:08 PM',
        open: true),
    NotificationItem(
      icon: AppIconStrings.bellNotificationOutline,
      title: 'Thank you for your order! Your order #12345 has been confirmed and is being processed.',
      date: 'Aug 12, 2020 at 12:08 PM',
    ),
    NotificationItem(
        icon: AppIconStrings.notificationPromotion,
        title: 'The app may be temporarily unavailable on May 25th. During this time.',
        date: 'Aug 18, 2024 at 12:08 PM',
        open: true),
    NotificationItem(
        icon: AppIconStrings.bellNotificationOutline,
        title: 'Thank you for your order! Your order #12345 has been confirmed and is being processed.',
        date: 'Aug 12, 2020 at 12:08 PM',
        open: true),
  ].obs;

  RxList<NotificationItem> promotionNotification = <NotificationItem>[
    NotificationItem(
        icon: AppIconStrings.notificationPromotion,
        title: 'Dear Customer, our app will undergo scheduled maintenance.',
        date: 'Aug 12, 2020 at 12:08 PM',
        open: true),
    NotificationItem(
        icon: AppIconStrings.notificationPromotion,
        title: 'Important Security Update: We’ve enhanced our security protocols to protect your personal data better.',
        date: 'Aug 12, 2020 at 12:08 PM',
        open: false),
  ].obs;

  RxList<NotificationItem> updateNotification = <NotificationItem>[
    NotificationItem(
        icon: AppIconStrings.notificationPromotion,
        title: 'The app may be temporarily unavailable on May 25th. During this time.',
        date: 'Aug 18, 2024 at 12:08 PM',
        open: true),
  ].obs;

  void markAsRead(int index) {
    if (index >= 0 && index < allNotification.length) {
      final notificationAll = allNotification[index];
      allNotification[index] = notificationAll.copyWith(open: true);

      // Find and update the same notification in promotionNotification
      for (int i = 0; i < promotionNotification.length; i++) {
        if (promotionNotification[i].title == notificationAll.title) {
          promotionNotification[i] = promotionNotification[i].copyWith(open: true);
          break;
        }
      }

      // Find and update the same notification in updateNotification
      for (int i = 0; i < updateNotification.length; i++) {
        if (updateNotification[i].title == notificationAll.title) {
          updateNotification[i] = updateNotification[i].copyWith(open: true);
          break;
        }
      }

      update();
    } else {
      print('Invalid index: $index');
    }
  }
}

