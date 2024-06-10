import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class PrescriptionUploadSection extends StatelessWidget {
  const PrescriptionUploadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.primary10), borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg)),
      child: Container(
        padding: const EdgeInsets.all(AppSizes.paddingXXl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Upload',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems4),
            const Divider(height: 1),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(AppSizes.paddingXXl),
                      style: ButtonStyle(side: MaterialStateProperty.all(const BorderSide(color: AppColors.primary))),
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIconStrings.camera),
                      iconSize: AppSizes.iconXl,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Text(
                      'Camera',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(AppSizes.paddingXXl),
                      style: ButtonStyle(side: MaterialStateProperty.all(const BorderSide(color: AppColors.primary))),
                      onPressed: () {
                        // Handle gallery action
                      },
                      icon: SvgPicture.asset(AppIconStrings.gallery),
                      iconSize: AppSizes.iconXl,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Text(
                      'Gallery',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(AppSizes.paddingXXl),
                      style: ButtonStyle(side: MaterialStateProperty.all(const BorderSide(color: AppColors.primary))),
                      onPressed: () {
                        // Handle past RX action
                      },
                      icon:SvgPicture.asset(AppIconStrings.note),
                      iconSize: AppSizes.iconXl,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Text(
                      'Past RX',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: AppHelperFunction.screenWidth() / 2,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems12),
            Text('Please upload your valid prescription images prescribed by your doctor',
                textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
      ),
    );
  }
}