import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  final phone = "".obs;
  final message = "".obs;
  final isLoading = false.obs;
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  RxString code = ''.obs;
  RxString serverCode = ''.obs;
}
