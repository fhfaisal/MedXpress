import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

import '../controllers/otp_response_controller.dart';

class OtpResponseView extends GetView<OtpResponseController> {
  const OtpResponseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
            height: AppHelperFunction.screenHeight() * 0.3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  margin: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: AppSizes.appBarHeight),
                      Image(
                        image: const AssetImage(AppImageStrings.fullLogo),
                        fit: BoxFit.cover,
                        width: AppHelperFunction.screenWidth() / 2,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                    ],
                  ),
                ),
                Positioned(
                    top: 0,
                    right: -20,
                    child: Image(
                      image: const AssetImage(AppImageStrings.backgroundLogo),
                      fit: BoxFit.fitHeight,
                      width: AppHelperFunction.screenWidth() / 1.59,
                      height: AppHelperFunction.screenWidth() / 1.58,
                    )),
              ],
            )),
        const SizedBox(height: AppSizes.defaultSpace),
        const CircleAvatar(
          radius: 80,
          backgroundColor: AppColors.primary,
          child: Icon(
            Icons.check,
            color: AppColors.white,
            size: 100,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          'Phone Number Verified',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          'Congratulations, your phone number has been verified. You can start using the app',
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: ElevatedButton(onPressed: () => controller.navigateToHome(), child: const Text('Continue')),
        )
      ],
    ));
  }
}
