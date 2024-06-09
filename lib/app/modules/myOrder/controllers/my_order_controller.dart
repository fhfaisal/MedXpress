import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import '../model/order.dart';

class MyOrderController extends GetxController {
  final List<Map<String, dynamic>> categories = [
    {'name': 'All', 'icon': AppIconStrings.all},
    {'name': 'Processing', 'icon': AppIconStrings.processing},
    {'name': 'Delivered', 'icon': AppIconStrings.delivered},
    {'name': 'Canceled', 'icon': AppIconStrings.canceled},
  ];
  var orders = MyOrderResponse(
    processing: [
      Order(
        id: "#025D2",
        date: DateTime.parse("2024-05-16T09:51:00"),
        status: "Processing",
        amount: 165,
        deliveryType: "Regular Delivery",
      ),
      Order(
        id: "#025DF",
        date: DateTime.parse("2024-05-16T09:51:00"),
        status: "Processing",
        amount: 565,
        deliveryType: "Regular Delivery",
      ),
    ],
    delivered: [
      Order(
        id: "#02DC4",
        date: DateTime.parse("2024-05-16T09:51:00"),
        status: "Delivered",
        amount: 750,
        deliveryType: "Faster Delivery",
      ),
    ],
    canceled: [
      Order(
        id: "#DG523",
        date: DateTime.parse("2024-05-16T09:51:00"),
        status: "Canceled",
        amount: 2505,
        deliveryType: "Regular Delivery",
      ),
      Order(
        id: "#DG524",
        date: DateTime.parse("2024-05-16T09:51:00"),
        status: "Canceled",
        amount: 255,
        deliveryType: "Regular Delivery",
      ),
    ],
  ).obs;

  List get currentOrders {
    switch (selectedCategory.value) {
      case 'Processing':
        return orders.value.processing ?? [];
      case 'Delivered':
        return orders.value.delivered ?? [];
      case 'Canceled':
        return orders.value.canceled ?? [];
      default:
        return [
          ...?orders.value.processing,
          ...?orders.value.delivered,
          ...?orders.value.canceled,
        ];
    }
  }

  var selectedCategory = 'All'.obs;

  @override
  void onClose() {
    super.onClose();
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
  }

  Color getColor(String status) {
    switch (status) {
      case 'Processing':
        return AppColors.warning;
      case 'Delivered':
        return AppColors.primary;
      case 'Canceled':
        return AppColors.error;
      default:
        return AppColors.primary;
    }
  }
}
