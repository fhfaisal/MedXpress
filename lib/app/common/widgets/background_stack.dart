import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/image_strings.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

class BackgroundStack extends StatelessWidget {
  const BackgroundStack({super.key, this.headline,this.description,this.isDescription=false});

  final String? headline,description;
  final bool isDescription;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.appBarHeight),
              Image(
                image: const AssetImage(AppImageStrings.fullLogo),
                fit: BoxFit.cover,
                width: AppHelperFunction.screenWidth() / 2,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                headline ?? '',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // isDescription? Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const SizedBox(height: AppSizes.spaceBtwItems),
              //     Text(
              //       description ?? '',
              //       style: Theme.of(context).textTheme.bodySmall,
              //     ),
              //   ],
              // ):const SizedBox(),
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: -20,
            child: Image(
              image: const AssetImage(AppImageStrings.backgroundLogo),
              fit: BoxFit.fitHeight,
              width: AppHelperFunction.screenWidth() / 1.5,
              height: AppHelperFunction.screenWidth() / 1.5,
            )),
      ],
    );
  }
}