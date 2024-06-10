
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/background_stack.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        border: Border.all(color: AppColors.primary.withOpacity(0.15)),
      ),
    );

    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
            height: AppHelperFunction.screenHeight() * 0.3,
            child: BackgroundStack(
              headline: 'OTP Verification'.tr,
            )),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              children: [
                Text(
                  'We just send you a verification code via SMS +880 1988045608',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                SingleChildScrollView(
                    child: Column(
                  children: [
                    Form(
                      key: controller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Directionality(
                            // Specify direction if desired
                            textDirection: TextDirection.ltr,
                            child: Pinput(
                              length: 4,
                              controller: controller.pinController,
                              focusNode: controller.focusNode,
                              androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                              listenForMultipleSmsOnAndroid: true,
                              defaultPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                    borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
                                    border: Border.all(color: AppColors.primary.withOpacity(0.15)),
                                    color: AppColors.primary10),
                              ),
                              focusedPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
                                  border: Border.all(color: AppColors.primary),
                                ),
                              ),
                              submittedPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                  color: AppColors.primary10,
                                  border: Border.all(color: AppColors.primary),
                                ),
                              ),
                              errorPinTheme: defaultPinTheme.copyWith(
                                  decoration: defaultPinTheme.decoration!.copyWith(
                                color: AppColors.error,
                                border: Border.all(color: AppColors.error),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSizes.defaultSpace),
                    SizedBox(
                        width: AppHelperFunction.screenWidth(),
                        child: ElevatedButton(
                          onPressed: () => controller.navigateToOTPResponse(),
                          child: const Text('Verify'),
                        )),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    ResendOTPSection(controller: controller),
                  ],
                )),
              ],
            )),
      ],
    ));
  }
}

class ResendOTPSection extends StatelessWidget {
  const ResendOTPSection({
    super.key,
    required this.controller,
  });

  final OtpVerificationController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpVerificationController>(
      builder: (_) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                controller.showResendButton
                    ? GestureDetector(
                        onTap: () => controller.startTimer(),
                        child: Container(
                          height: AppSizes.buttonHeightMd,
                          padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingXXl),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg)),
                          child: Center(
                              child: Text(
                            'Resend',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).primaryColor),
                          )),
                        ),
                      )
                    : Row(
                        children: [
                          Text(
                            'Resend',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: AppSizes.xs),
                            child: Icon(
                              CupertinoIcons.stopwatch_fill,
                              color: AppColors.primary,
                            ),
                          ),
                          Text(
                            "${controller.start.toString()}s",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
              ],
            ),
          ],
        );
      },
    );
  }
}
