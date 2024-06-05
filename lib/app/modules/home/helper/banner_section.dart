import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:medxpress/app/modules/home/model/featured_brands.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppHelperFunction.screenHeight() * 0.15,
        decoration: BoxDecoration(
            color: AppColors.primary5,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL),
            border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.5))),
        child: CarouselSlider.builder(
          enableAutoSlider: true,
          unlimitedMode: true,
          slideTransform: const ParallaxTransform(clipAmount: -300),
          slideIndicator: CircularSlideIndicator(
              itemSpacing: 8,
              padding: const EdgeInsets.only(bottom: 10),
              indicatorRadius: 3,
              indicatorBackgroundColor: Theme.of(context).colorScheme.secondary,
              currentIndicatorColor: Theme.of(context).colorScheme.primary),
          itemCount: featureBrands.length,
          slideBuilder: (index) => ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL),
              child: Image(image: AssetImage(featureBrands.elementAt(index).image),fit: BoxFit.fill,width: AppHelperFunction.screenWidth(),)),
        ));
  }
}