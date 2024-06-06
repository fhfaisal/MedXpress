import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';

class NotificationItem {
  final String icon;
  final String title;
  final String date;
  bool open;

  NotificationItem({
    required this.icon,
    required this.title,
    required this.date,
    this.open = false,
  });

  NotificationItem copyWith({bool? open}) {
    return NotificationItem(
      icon: icon,
      title: title,
      date: date,
      open: open ?? this.open,
    );
  }
}


