import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/colors.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._(); //To avoid creating instances

  ///Light Theme
  static final lightMaterialButtonTheme = MaterialBannerThemeData(
    contentTextStyle: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
    padding: const EdgeInsets.symmetric(horizontal: 16)
  );

  ///DorkTheme
  static final darkOutlinedButtonTheme = const OutlinedButtonThemeData();
}
