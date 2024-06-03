import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medxpress/app/common/widgets/background_stack.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
            height: AppHelperFunction.screenHeight() * 0.3,
            child: BackgroundStack(
              headline: 'Create Your Account'.tr,
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
                        labelText: 'Name'.tr,
                        hintText: 'Enter your name'.tr,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email'.tr,
                        hintText: 'EnterYourEmail'.tr,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.dobController,
                            readOnly: true,
                            onTap: () => AppHelperFunction.datePicker(context, controller.dobController),
                            decoration: InputDecoration(
                                labelText: 'Date of birth'.tr,
                                suffixIcon: IconButton(
                                  onPressed: () => AppHelperFunction.datePicker(context, controller.dobController),
                                  icon: const Icon(Icons.calendar_today_outlined),
                                )),
                          ),
                        ),
                        const SizedBox(width: AppSizes.spaceBtwInputFieldsSm),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              labelText: 'Gender',
                            ),
                            icon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Iconsax.arrow_down_14,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            value: controller.selectedGender,
                            onChanged: (value) => controller.selectedGender,
                            items: controller.genders.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwInputFields),
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
                        child: ElevatedButton(onPressed: () => controller.navigateToOTP(), child: Text('Sign In'.tr))),
                    const SizedBox(height: AppSizes.defaultSpace),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have An Account?".tr,
                          style: TextStyle(fontSize: 15, color: AppColors.tertiaryText),
                        ),
                        MaterialButton(
                          onPressed: () => controller.navigateToLogin(),
                          child: Text(
                            "Login Here".tr,
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
