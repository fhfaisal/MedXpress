import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/section_separator.dart';
import 'package:medxpress/app/modules/home/helper/banner_section.dart';
import 'package:medxpress/app/modules/home/helper/feature_brands.dart';
import 'package:medxpress/app/modules/home/helper/header_section.dart';
import 'package:medxpress/app/modules/home/helper/popular_product.dart';
import 'package:medxpress/app/modules/home/helper/search_and_filter.dart';
import 'package:medxpress/app/modules/home/helper/top_category_section.dart';
import 'package:medxpress/app/modules/home/helper/upload_prescription.dart';
import 'package:medxpress/app/modules/home/model/featured_brands.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(AppSizes.defaultSpace,
            AppSizes.defaultSpace, AppSizes.defaultSpace, 0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const HeaderSection(),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const SearchAndFilterSection(),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const BannerSection(),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const UploadPrescriptionSection(),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SectionSeparation(
              separationText: 'Top Category',
              isAction: true,
              onPressed: () => null,
              actionText: 'See All',
            ),
            const SizedBox(height: AppSizes.spaceBtwItems12),
            const TopCategorySection(),
            SectionSeparation(
              separationText: 'Popular Products',
              isAction: true,
              onPressed: () => null,
              actionText: 'See All',
            ),
            const PopularProductSection(),
            const SizedBox(height: AppSizes.spaceBtwItems12),
            SectionSeparation(
              separationText: 'Feature Brands',
              isAction: true,
              onPressed: () => null,
              actionText: 'See All',
            ),
            //const SizedBox(height: AppSizes.spaceBtwItems12),
            const FeatureBrandsSection(),
            const SizedBox(height: AppSizes.spaceBtwItems12),
            SectionSeparation(
              separationText: 'Articles',
              isAction: false,
              onPressed: () => null,
              actionText: 'See All',
            ),
            ClipRRect(
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
            )
          ],
        ),
      ),
    );
  }
}
