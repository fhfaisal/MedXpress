import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/background_stack.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
            height: AppHelperFunction.screenHeight() * 0.3,
            child: BackgroundStack(
              headline: 'LoginYourAccount'.tr,
            )),
        SizedBox(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email'.tr,
                        hintText: 'EnterYourEmail'.tr,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Obx(
                      () => TextFormField(
                          obscureText: controller.obSecure.value,
                          decoration: InputDecoration(
                            labelText: 'Password'.tr,
                            hintText: 'EnterYourPassword'.tr,
                            suffixIcon: IconButton(
                                onPressed: () => controller.obSecure.value = !controller.obSecure.value,
                                icon: controller.obSecure.value
                                    ? const Icon(Icons.visibility_off_outlined)
                                    : const Icon(Icons.visibility_outlined)),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                  value: controller.remember.value,
                                  onChanged: (value) => controller.remember.value = !controller.remember.value,
                                )),
                            Text('RememberMe'.tr),
                          ],
                        ),
                        InkWell(
                            onTap: () => controller.navigateToForgot(),
                            child: Text(
                              'ForgotPassword?'.tr,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ))
                      ],
                    ),
                    const SizedBox(height: AppSizes.defaultSpace),
                    SizedBox(
                        width: AppHelperFunction.screenWidth(),
                        child: ElevatedButton(onPressed: () => controller.navigateToHome(), child: Text('Login'.tr))),
                    const SizedBox(height: AppSizes.defaultSpace),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DontHaveAnAccount".tr,
                          style: TextStyle(fontSize: 15, color: AppColors.tertiaryText),
                        ),
                        MaterialButton(
                          onPressed: () => controller.navigateToSignUp(),
                          child: Text(
                            "SignUp".tr,
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: AppColors.secondary),
                          ),
                        )
                      ],
                    ),
                    const SocialMediaDividerSection(),
                    const SizedBox(height: AppSizes.defaultSpace),
                    const SocialMediaLoginSection()
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class SocialMediaDividerSection extends StatelessWidget {
  const SocialMediaDividerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(height: 1)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Or sign in with'.tr,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.tertiaryText),
          ),
        ),
        const Expanded(child: Divider(height: 1)),
      ],
    );
  }
}

class SocialMediaLoginSection extends StatelessWidget {
  const SocialMediaLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.all(AppSizes.paddingXXl),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd), border: Border.all(color: AppColors.primary)),
            child: SvgPicture.asset(AppIconStrings.facebook)),
        Container(
            padding: const EdgeInsets.all(AppSizes.paddingXXl),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd), border: Border.all(color: AppColors.primary)),
            child: SvgPicture.asset(AppIconStrings.google)),
        Container(
            padding: const EdgeInsets.all(AppSizes.paddingXXl),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd), border: Border.all(color: AppColors.primary)),
            child: SvgPicture.asset(AppIconStrings.linkedin)),
      ],
    );
  }
}

