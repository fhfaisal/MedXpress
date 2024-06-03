import 'package:flutter/material.dart';
import 'package:medxpress/app/common/widgets/discount_custom_painter.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class PopularProductSection extends StatelessWidget {
  const PopularProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppHelperFunction.screenHeight() * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.only(right: 10),
            height: 190,
            width: 130,
            decoration: BoxDecoration(
                color: AppColors.primary5,
                borderRadius: BorderRadius.circular(AppSizes.cardRadiusMd),
                border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.5))),
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        surfaceTintColor: AppColors.white,
                        elevation: 4,
                        shadowColor: AppColors.secondary.withOpacity(0.2),
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
                          padding: const EdgeInsets.all(AppSizes.paddingSm),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Omron HEM-8712  BP Accu check Active ',
                                style: Theme.of(context).textTheme.labelMedium,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: AppSizes.paddingSm),
                              Row(
                                children: [
                                  Text('৳250/',style: Theme.of(context).textTheme.titleLarge,),
                                  Text('৳450/',style: Theme.of(context).textTheme.labelSmall!.copyWith(decoration: TextDecoration.lineThrough)),
                                ],
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
        ));
  }
}