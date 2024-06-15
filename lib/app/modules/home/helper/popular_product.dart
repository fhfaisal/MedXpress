import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/discount_custom_painter.dart';
import 'package:medxpress/app/modules/home/controllers/home_controller.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class PopularProductSection extends GetView<HomeController> {
  const PopularProductSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppHelperFunction.screenHeight() * 0.25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: controller.productList.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => controller.navigateToProductDetails(index),
            child: Card(
              shadowColor: AppColors.shadowColor,
              margin: const EdgeInsets.only(bottom: AppSizes.xs,right: AppSizes.md),
              child: SizedBox(
                width: AppHelperFunction.screenWidth()/3,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Card(
                            surfaceTintColor: AppColors.white,
                            elevation: 4,
                            shadowColor: AppColors.shadowColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd)),
                            margin: const EdgeInsets.all(0),
                            child: const Center(
                              child: Image(
                                image: AssetImage(AppImageStrings.product1),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(AppSizes.paddingMd),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.productList[index].name,
                                    style: Theme.of(context).textTheme.labelMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: AppSizes.paddingSm),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(controller.productList.elementAt(index).price.toString(),style: Theme.of(context).textTheme.bodyLarge,),
                                            Text(controller.productList.elementAt(index).oldPrice.toString(),style: Theme.of(context).textTheme.bodySmall!.copyWith(decoration: TextDecoration.lineThrough,fontSize: 10)),
                                          ],
                                        ),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Theme.of(context).primaryColor,
                                              borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(AppSizes.borderRadiusXXL),
                                                topRight: Radius.circular(AppSizes.borderRadiusXXL),
                                                bottomRight: Radius.circular(AppSizes.borderRadiusXXL),
                                              )
                                          ),
                                          child: const Icon(Icons.add,color: AppColors.white,),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                    const Positioned(
                      top: 0,
                      left: 0,
                      child: DiscountLabel(discount: 10,),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}