import 'package:flutter/material.dart';
import 'package:medxpress/app/modules/home/model/featured_brands.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class FeatureBrandsSection extends StatelessWidget {
  const FeatureBrandsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperFunction.screenHeight()*0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featureBrands.length,
        //separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems8),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: const EdgeInsets.all(0),
                elevation: 2,
                shadowColor: AppColors.secondary.withOpacity(0.2),
                surfaceTintColor: AppColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.cardRadiusSm)
                ),
                child: Container(
                  height: AppHelperFunction.screenHeight()*0.1,
                  width: AppHelperFunction.screenWidth()*0.24,
                  padding: const EdgeInsets.all(AppSizes.paddingXXl),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.cardRadiusSm),
                      border: Border.all(color: AppColors.primary10)
                  ),
                  child: Center(
                      child: Image(image: AssetImage(featureBrands.elementAt(index).image))),
                ),
              ),],
          ),
        ),
      ),
    );
  }
}