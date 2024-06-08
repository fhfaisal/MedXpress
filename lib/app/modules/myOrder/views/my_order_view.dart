import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medxpress/app/common/widgets/custom_button1.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
import '../controllers/my_order_controller.dart';
import '../model/order.dart';

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
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.currentOrders.length,
                  itemBuilder: (context, index) {
                    Order order = controller.currentOrders[index];
                    return Card(
                      surfaceTintColor: AppColors.white,
                      elevation: 4,
                      shadowColor: AppColors.shadowColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.primary50),
                        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.paddingXXl),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text('Order Id',style: Theme.of(context).textTheme.labelSmall),
                                      const SizedBox(width: AppSizes.spaceBtwItems4),
                                      Text('${order.id}',style: Theme.of(context).textTheme.labelLarge),
                                      CustomButton1(
                                        height: AppSizes.lg,
                                        width: AppSizes.lg,
                                          onTap: () =>AppHelperFunction.copyClipboard(order.id!, context),
                                          child: const Icon(FontAwesomeIcons.solidCopy,size: AppSizes.iconXs,))
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.paddingXXl,vertical: AppSizes.paddingSm),
                                    decoration: BoxDecoration(
                                      color: AppColors.primary5,
                                      borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                                    ),
                                    child: Text(order.deliveryType!,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Theme.of(context).primaryColor),),
                                  )
                                ],
                              ),
                              const SizedBox(height: AppSizes.spaceBtwItems4),
                              const Divider(height: 1,),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: AppSizes.paddingLg,vertical: AppSizes.paddingLg),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Date:',style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10)),
                                        Text(AppHelperFunction.getFormattedDate(order.date!),style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    const SizedBox(height: AppSizes.spaceBtwItems4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Status:',
                                          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal:AppSizes.paddingXXl,vertical: AppSizes.paddingSm),
                                          decoration: BoxDecoration(
                                            color: controller.getColor(order.status!), 
                                            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd)
                                          ),
                                          child: Text(
                                            order.status!,
                                            style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 10, fontWeight: FontWeight.bold,color: AppColors.white), // Adjust text color if needed
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: AppSizes.spaceBtwItems4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Amount Payable:',style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 10)),
                                        Text("৳${order.amount.toString()}",style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(height: 1),
                              const SizedBox(height: AppSizes.spaceBtwItems),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: ElevatedButton(onPressed: () {},child: const Text('Pay Now'))),
                                  const SizedBox(width: AppSizes.spaceBtwItems),
                                  Expanded(child: OutlinedButton(onPressed: () {},child: const Text('Details'))),
                                ],
                              ),
                            ],
                          ),
                      ),
                    );
                  },
                ),
              ),
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
