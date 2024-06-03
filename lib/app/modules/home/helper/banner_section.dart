import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class BannerSection extends StatelessWidget {
  const BannerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
    ];
    final List<String> letters = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
    ];
    return SizedBox(
        height: AppHelperFunction.screenHeight() * 0.15,
        child: CarouselSlider.builder(
          scrollDirection: Axis.horizontal,
          enableAutoSlider: true,
          unlimitedMode: true,
          //controller: controller.sliderController,
          slideTransform:  StackTransform(),
          slideIndicator: CircularSlideIndicator(
              itemSpacing: 13,
              padding: const EdgeInsets.only(bottom: 10),
              indicatorRadius: 5,
              indicatorBackgroundColor: Theme.of(context).colorScheme.secondary,
              currentIndicatorColor: Theme.of(context).colorScheme.primary),
          itemCount: 4,
          slideBuilder: (index) => Container(
              decoration: BoxDecoration(
                  color: AppColors.primary5,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXL),
                  border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.5))),
              child: Image(image: AssetImage(AppImageStrings.banner),fit: BoxFit.fill,width: AppHelperFunction.screenWidth(),)
          ),
        ));
  }
}