import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medxpress/app/modules/home/model/top_category.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class TopCategorySection extends StatelessWidget {
  const TopCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperFunction.screenHeight()*0.10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topCategory.length,
        //separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBtwItems8),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems8),
          child: Column(
            children: [
              CircleAvatar(
                  backgroundColor: topCategory.elementAt(index).color,
                  radius: 25,
                  child: Center(
                      child: SvgPicture.asset(
                        topCategory.elementAt(index).icon,
                        color: AppColors.white,
                      ))),
              const SizedBox(height: 3),
              Text(topCategory.elementAt(index).title,style: Theme.of(context).textTheme.labelMedium,overflow: TextOverflow.ellipsis,maxLines: 1,)
            ],
          ),
        ),
      ),
    );
  }
}