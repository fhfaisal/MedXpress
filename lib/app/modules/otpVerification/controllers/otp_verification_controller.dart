import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/routes/app_pages.dart';

class OtpVerificationController extends GetxController {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  Timer? timer;
  int start = 30;
  bool showResendButton = false;
  @override
  void onInit() {
    startTimer();
    super.onInit();
  }
  void startTimer() {
    showResendButton = false;
    start = 30;
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start == 0) {
            showResendButton = true;
            timer.cancel();
            update();
        } else {
            start--;
            update();
        }
      },
    );
  }

  navigateToOTPResponse(){
    Get.toNamed(Routes.OTP_RESPONSE);
  }
}
