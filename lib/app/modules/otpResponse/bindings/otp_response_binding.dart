import 'package:get/get.dart';

import '../controllers/otp_response_controller.dart';

class OtpResponseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpResponseController>(
      () => OtpResponseController(),
    );
  }
}
