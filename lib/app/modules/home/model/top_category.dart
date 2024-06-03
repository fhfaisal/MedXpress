import 'dart:ui';

import 'package:medxpress/app/utils/constants/icon_strings.dart';

class TopCategory{
  TopCategory({required this.title,required this.icon,required this.color,});
  final String title,icon;
  final Color color;
}
 List<TopCategory> topCategory=[
   TopCategory(title: 'Eye Care', icon: AppIconStrings.eyeCare,color: const Color(0xFFFF839F)),
   TopCategory(title: 'Dental', icon: AppIconStrings.dental,color: const Color(0xFF18DAA0)),
   TopCategory(title: 'Wellness', icon: AppIconStrings.wellness,color: const Color(0xFFFFBC6C)),
   TopCategory(title: 'Skin & Hair', icon: AppIconStrings.skinAndHair,color: const Color(0xFF4AACFF)),
   TopCategory(title: 'Homeopathy', icon: AppIconStrings.homeopathy,color: const Color(0xFF474A65)),
 ];