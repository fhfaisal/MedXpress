import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/theme/customTheme/appbar_theme.dart';
import 'package:medxpress/app/utils/theme/customTheme/bottom_sheet_theme.dart';
import 'package:medxpress/app/utils/theme/customTheme/checkbox_theme.dart';
import 'package:medxpress/app/utils/theme/customTheme/chip_theme.dart';
import 'package:medxpress/app/utils/theme/customTheme/input_decoration_theme.dart';
import 'package:medxpress/app/utils/theme/customTheme/outlined_button_theme.dart';
import 'package:medxpress/app/utils/theme/customTheme/search_bar_theme.dart';

import 'customTheme/elevated_button_theme.dart';
import 'customTheme/text_theme.dart';

class AppTheme {
  AppTheme._();

  ///Light theme
  static ThemeData lightTheme = ThemeData(
      disabledColor: AppColors.tertiaryText,
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
      appBarTheme: AppAppBarTheme.lightAppBar,
      bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
      chipTheme: AppChipTheme.lightChipTheme,
      inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
      searchBarTheme: AppSearchBarTheme.lightSearchBar,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        brightness: Brightness.light,
        onPrimary: AppColors.primary,
      ),
      iconTheme: const IconThemeData(color: AppColors.primary)
  );

  ///Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black54,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
// ThemeData
}
