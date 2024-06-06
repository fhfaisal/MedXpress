import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class UploadPrescriptionSection extends StatelessWidget {
  const UploadPrescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        height: AppSizes.buttonHeight,
        decoration: BoxDecoration(
            color: AppColors.bgAccent,
            borderRadius: BorderRadius.circular(AppSizes.buttonRadius)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt_outlined,color: AppColors.white,),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('Upload Prescription',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white),)
          ],
        ),
      ),);
  }
}