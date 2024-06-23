import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:medxpress/app/modules/home/model/featured_brands.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

class FooterBanner extends StatelessWidget {
  const FooterBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL),
      child: SizedBox(
          height: AppHelperFunction.screenHeight() * 0.15,
          child: CarouselSlider.builder(
            scrollDirection: Axis.vertical,
            enableAutoSlider: true,
            unlimitedMode: true,
            //controller: controller.sliderController,
            slideTransform: const DefaultTransform(),
            itemCount: featureBrands.length,
            slideBuilder: (index) => Image(
              image: const AssetImage(AppImageStrings.refer),
              fit: BoxFit.cover,
              width: AppHelperFunction.screenWidth(),
            ),
          )),
    );
  }
}
