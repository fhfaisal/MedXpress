import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/discount_custom_painter.dart';
import 'package:medxpress/app/common/widgets/empty_page.dart';
import 'package:medxpress/app/common/widgets/section_separator.dart';
import 'package:medxpress/app/modules/home/helper/banner_section.dart';
import 'package:medxpress/app/modules/home/helper/header_section.dart';
import 'package:medxpress/app/modules/home/helper/popular_product.dart';
import 'package:medxpress/app/modules/home/helper/search_and_filter.dart';
import 'package:medxpress/app/modules/home/helper/top_category_section.dart';
import 'package:medxpress/app/modules/home/helper/upload_prescription.dart';
import 'package:medxpress/app/modules/home/model/top_category.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
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
      padding: const EdgeInsets.fromLTRB(AppSizes.defaultSpace, AppSizes.defaultSpace, AppSizes.defaultSpace, 0),
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
            separationText: 'Popular Products',
            isAction: true,
            onPressed: () => null,
            actionText: 'See All',
          ),
          const SizedBox(height: AppSizes.spaceBtwItems12),
          const TopCategorySection(),
        ],
      ),
    ),
    );
  }
}