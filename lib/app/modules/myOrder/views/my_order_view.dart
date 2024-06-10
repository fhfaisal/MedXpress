import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/modules/myOrder/controllers/my_order_controller.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import '../helper//orders_list.dart';

class MyOrderView extends GetView<MyOrderController> {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: categoryChip(controller.categories[index], context),
                  );
                },
              ),
            ),
            Expanded(
              child: OrdersList(controller: controller),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryChip(Map<String, dynamic> category, BuildContext context) {
    return Obx(
      () => ChoiceChip(
        showCheckmark: false,
        avatar: SvgPicture.asset(
          category['icon'],
          height: AppSizes.iconLg,
          color: controller.selectedCategory.value == category['name'] ? AppColors.white : AppColors.primary,
        ),
        label: Text(
          category['name'],
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: controller.selectedCategory.value == category['name'] ? AppColors.white : AppColors.primary),
        ),
        selected: controller.selectedCategory.value == category['name'],
        onSelected: (selected) {
          if (selected) {
            controller.changeCategory(category['name']);
          }
        },
      ),
    );
  }
}


