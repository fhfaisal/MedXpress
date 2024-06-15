import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:medxpress/app/modules/productDetails/controllers/product_details_controller.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';

class ReviewSection extends GetView<ProductDetailsController> {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.product!.reviews.length > 2 ? 2 : controller.product!.reviews.length,
        itemBuilder: (context, index) {
          final review = controller.product!.reviews.elementAt(index);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Row(
                children: [
                  Text(review.author, style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600)),
                  const Spacer(),
                  Text(review.date, style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: AppSizes.iconSm),
                  const SizedBox(width: AppSizes.spaceBtwItems4),
                  Text(review.rating.toString(),
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: AppSizes.spaceBtwItems4),
              Text(
                review.comment,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          );
        });
  }
}
