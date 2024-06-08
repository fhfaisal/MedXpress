import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.padding,
    this.background,
    this.borderRadius,
    this.onTap,
  });
  final double? height,width;
  final EdgeInsets? padding;
  final Color? background;
  final BorderRadius? borderRadius;
  final Widget child;
  final Callback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height?? AppSizes.buttonHeightMd,
        width: width?? AppSizes.buttonWidth,
        padding: padding?? const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd),
        margin: padding?? const EdgeInsets.symmetric(horizontal: AppSizes.paddingMd),
        decoration: BoxDecoration(
            color: background?? Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: borderRadius?? BorderRadius.circular(AppSizes.borderRadiusSm)),
        child: Center(child: child),
      ),
    );
  }
}
