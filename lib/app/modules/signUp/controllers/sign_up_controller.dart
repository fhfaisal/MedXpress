import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  RxBool remember = true.obs;
  RxBool obSecure = true.obs;

  final TextEditingController dobController = TextEditingController();
  String selectedGender='Male';
  final List<String> genders = ['Male', 'Female', 'Other'];

  navigateToForgot() {
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }

  navigateToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  navigateToOTP() {
    Get.toNamed(Routes.OTP_VERIFICATION);
  }
}
