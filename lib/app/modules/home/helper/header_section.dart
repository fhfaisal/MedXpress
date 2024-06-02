import 'package:flutter/material.dart';
import 'package:medxpress/app/common/widgets/custom_button1.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: const AssetImage(AppImageStrings.fullLogo),
                  width: AppHelperFunction.screenWidth() / 2.5,
                ),
                Text(
                  'Delivery to Banani',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400, height: 1.5),
                )
              ],
            )),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton1(child: Icon(Icons.shopping_cart_checkout)),
            SizedBox(width: AppSizes.spaceBtwItems),
            CustomButton1(child: Icon(Icons.notifications)),
          ],
        ),
      ],
    );
  }
}