import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:medxpress/app/modules/productDetails/model/product_list_response_model.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

class ProductHeaderSection extends StatelessWidget {
  const ProductHeaderSection({
    super.key,
    required this.product,
  });

  final ProductDetails product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          AppSizes.defaultSpace, AppSizes.defaultSpace, AppSizes.defaultSpace, AppSizes.spaceBtwSections),
      height: AppHelperFunction.screenHeight() * 0.20,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary10),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL),
      ),
      child: CarouselSlider.builder(
        slideTransform: const ParallaxTransform(clipAmount: -300),
        slideIndicator: CircularSlideIndicator(
            itemSpacing: 8,
            padding: const EdgeInsets.only(bottom: 30),
            indicatorRadius: 3,
            indicatorBackgroundColor: Theme.of(context).colorScheme.secondary,
            currentIndicatorColor: Theme.of(context).colorScheme.primary),
        itemCount: product.images.length,
        slideBuilder: (index) => Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL),
                child: SizedBox(
                  height: AppHelperFunction.screenHeight() * 0.18,
                  child: Image(
                    image: const AssetImage(
                      AppImageStrings.product1,
                    ),
                    fit: BoxFit.contain,
                    width: AppHelperFunction.screenWidth(),
                  ),
                )),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            )
          ],
        ),
      ),
    );
  }
}