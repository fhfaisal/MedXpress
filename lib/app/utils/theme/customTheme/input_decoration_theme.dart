import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/colors.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  ///Dark InputDecorationTheme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: AppColors.primary,
      suffixIconColor: AppColors.primary,

// constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
      labelStyle: const TextStyle().copyWith(fontSize: 14, color: AppColors.tertiaryText),
      hintStyle: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w400, color: AppColors.tertiaryText),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: AppColors.textPrimary),
      contentPadding: const EdgeInsets.only(left: 25),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: Colors.grey),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(width: 1, color: AppColors.primary.withOpacity(0.15),),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: AppColors.primary),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(width: 2, color: Colors.orange),
      ));

  ///Dark InputDecorationTheme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,

// constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
      labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
      hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.white),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: Colors.grey),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: Colors.white),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1, color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2, color: Colors.orange),
      ));
} // InputDecoration Theme