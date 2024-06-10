import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class UserProfileSection extends StatelessWidget {
  const UserProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        color: AppColors.primary10,
        border: Border.all(color: AppColors.primary50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            subtitleTextStyle: Theme.of(context).textTheme.labelSmall,
            leading: CircleAvatar(
              backgroundColor: AppColors.primary10,
              child: SvgPicture.asset(AppIconStrings.myAccount),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(AppSizes.paddingMd),
              decoration: BoxDecoration(
                  color: AppColors.primary10,
                  shape: BoxShape.circle
              ),
              child: SvgPicture.asset(AppIconStrings.edit),
            ),
            title: const Text('Faisal'),
            subtitle: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('01644485591'),
                Text('24 Years | Male | O+ (ve)'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
