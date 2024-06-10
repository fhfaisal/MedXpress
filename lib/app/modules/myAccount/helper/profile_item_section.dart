import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medxpress/app/common/widgets/section_separator.dart';
import 'package:medxpress/app/modules/myAccount/model/my_profile_items.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class MyProfileItemsSection extends StatelessWidget {
  const MyProfileItemsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(AppSizes.paddingSm),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppSizes.borderRadiusMd),
                    topRight: Radius.circular(AppSizes.borderRadiusMd),
                  ),
                  border: Border.all(color: AppColors.primary10)
              ),
              child: const SectionSeparation(separationText: 'My Profile',isAction: false)),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary10)
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: profileItems.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => print(profileItems.elementAt(index).name),
                child: Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(AppSizes.paddingMd),
                      child: Row(
                        children: [
                          SvgPicture.asset(profileItems.elementAt(index).icon),
                          const SizedBox(width: AppSizes.spaceBtwItems),
                          Text(profileItems.elementAt(index).name),
                        ],
                      ),
                    ))
                  ],
                ),
              ),),
          ),
        ],
      ),
    );
  }
}