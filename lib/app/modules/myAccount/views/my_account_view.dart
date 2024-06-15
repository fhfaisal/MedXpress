import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/modules/myAccount/helper/profile_item_section.dart';
import 'package:medxpress/app/modules/myAccount/helper/setting_section.dart';
import 'package:medxpress/app/modules/myAccount/helper/user_profile_section.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

import '../controllers/my_account_controller.dart';

class MyAccountView extends GetView<MyAccountController> {
  const MyAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: const Column(
          children: [
            UserProfileSection(),
            SizedBox(height: AppSizes.spaceBtwItems),
            MyProfileItemsSection(),
            SizedBox(height: AppSizes.spaceBtwItems4),
            AppSettingsSection(),
          ],
        ),
      )
    );
  }
}


