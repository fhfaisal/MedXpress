import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medxpress/app/common/widgets/custom_button1.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

class SectionSeparation extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? separationText;
  final String? actionText;
  final bool isAction;

  const SectionSeparation({
    super.key,
    required this.separationText,
    this.actionText,
    this.onPressed,
    this.isAction = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Column(
        children: [
          //Divider(color: Theme.of(context).colorScheme.primary,height: 1,thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(separationText ?? '', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary)),
              isAction ? Text(actionText! ?? '', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.primary))
                  : const SizedBox()
            ],
          ),
          // Divider(color: Theme.of(context).colorScheme.primary,height: 1,thickness: 1,),
        ],
      ),
    );
  }
}

class SectionSeparationWithIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? separationText;
  final Widget? icon;

  const SectionSeparationWithIcon({
    super.key,
    required this.separationText,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Column(
        children: [
          //Divider(color: Theme.of(context).colorScheme.primary,height: 1,thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(separationText ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.secondary)),
              GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(AppSizes.paddingSm),
                    decoration: BoxDecoration(color: AppColors.primary10, shape: BoxShape.circle),
                    child:Padding(
                      padding: const EdgeInsets.all(AppSizes.paddingSm),
                      child: icon,
                    )))
            ],
          ),
          // Divider(color: Theme.of(context).colorScheme.primary,height: 1,thickness: 1,),
        ],
      ),
    );
  }
}
