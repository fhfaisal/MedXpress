import 'package:get/get.dart';
import 'package:medxpress/app/routes/app_pages.dart';

class LoginController extends GetxController {
  RxBool remember = true.obs;
  RxBool obSecure = true.obs;

  navigateToForgot() {
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }

  navigateToSignUp() {
    Get.toNamed(Routes.SIGN_UP);
  }

  navigateToHome() {
    Get.offAllNamed(Routes.HOME);
  }
}
