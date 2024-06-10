import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medxpress/app/common/widgets/section_separator.dart';
import 'package:medxpress/app/modules/prescription/helper/prescription_upload_section.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/icon_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
import '../helper/prescription_guide.dart';

import '../controllers/prescription_controller.dart';

class PrescriptionView extends GetView<PrescriptionController> {
  const PrescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PrescriptionView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.dialog(
                  PrescriptionGuide(),
                );
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          children: [
            const PrescriptionUploadSection(),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SectionSeparationWithIcon(
              separationText: 'Prescription List',
              icon: SvgPicture.asset(AppIconStrings.edit),
              onPressed:() => null,
            ),
            Expanded(child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) =>Card(
              margin: const EdgeInsets.symmetric(vertical: AppSizes.paddingSm),
              child: Container(
                  child: ListTile(
                    titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color:Theme.of(context).primaryColor),
                    textColor: Theme.of(context).primaryColor,
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('14'),
                        Text('April'.toUpperCase()),
                      ],
                    ),
                    title: Text('Prescription',style: Theme.of(context).textTheme.titleMedium),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total Item: 08',style: Theme.of(context).textTheme.labelSmall),
                        Row(
                          children: [
                            SvgPicture.asset(AppIconStrings.draft,color: Theme.of(context).primaryColor),
                            //Icon(Icons.cancel_schedule_send,size: AppSizes.iconSm,color: Theme.of(context).primaryColor),
                            const SizedBox(width: AppSizes.spaceBtwItems4),
                            Text('Ordered',style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                      ],
                    ),

                    trailing: Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,),
                  )),
            )))

          ],
        ),
      ),
    );
  }
}


