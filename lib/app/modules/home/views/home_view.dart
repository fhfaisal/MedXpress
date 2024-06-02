import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/modules/home/helper/header_section.dart';
import 'package:medxpress/app/modules/home/helper/search_and_filter.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: ListView(
          children: const [
            HeaderSection(),
            SizedBox(height: AppSizes.spaceBtwItems),
            SearchAndFilterSection(),
          ],
      ),
    ));
  }
}
