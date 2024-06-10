import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class PrescriptionGuide extends StatelessWidget {
  const PrescriptionGuide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppSizes.paddingXXl),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  highlightColor: Theme.of(context).primaryColor.withOpacity(0.5),
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.close, color: Colors.grey),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Valid Prescription Guide',
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    Text('Why upload the picture of the prescription?',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2),
                    const SizedBox(height: AppSizes.spaceBtwItems4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\u2022 ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary)),
                        Expanded(
                          child: Text(
                              'Your attached prescription will be secure and private as only our pharmacists will review it.',
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\u2022 ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary)),
                        Expanded(
                          child: Text(
                              'You are free from the fear of losing prescriptions, you can find your digital prescriptions in Medxpress app for life.',
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\u2022 ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary)),
                        Expanded(
                          child: Text(
                              'No problem if you can\'t understand the doctor\'s handwriting, our \'A\' Grade Pharmacist will assist you in ordering the medicine by viewing the prescription.',
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\u2022 ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary)),
                        Expanded(
                          child: Text('Your prescription will never be shared with any third party.',
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\u2022 ', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary)),
                        Expanded(
                          child: Text(
                              'According to Bangladesh government regulations, prescription is mandatory for ordering some medicines.',
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> prescriptionGuide = [
  'Your attached prescription will be secure and private as only our pharmacists will review it.',
  'You are free from the fear of losing prescriptions, you can find your digital prescriptions in Medxpress app for life.',
  'No problem if you can\'t understand the doctor\'s handwriting, our \'A\' Grade Pharmacist will assist you in ordering the medicine by viewing the prescription.',
  'Your prescription will never be shared with any third party.',
  'According to Bangladesh government regulations, prescription is mandatory for ordering some medicines.',
];