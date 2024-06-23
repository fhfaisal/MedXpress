import 'package:flutter/material.dart';
import 'package:medxpress/app/common/widgets/section_separator.dart';
import 'package:medxpress/app/modules/productDetails/helper/review_section.dart';
import 'package:medxpress/app/modules/productDetails/model/product_list_response_model.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/constants/sizes.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

class ProductBodySection extends StatelessWidget {
  const ProductBodySection({
    super.key,
    required this.product,
  });

  final ProductDetails product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppSizes.borderRadiusXXL))),
          child: Container(
            width: AppHelperFunction.screenWidth(),
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.borderRadiusXXL),
                  topRight: Radius.circular(AppSizes.borderRadiusXXL),
                  bottomRight: Radius.circular(AppSizes.borderRadiusXXL),
                  bottomLeft: Radius.circular(AppSizes.borderRadiusXXL),
                ),
                border: Border.symmetric(
                    horizontal: BorderSide(color: AppColors.primary10))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                product.name,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                product.dosageForm,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                product.manufacturer,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                product.genericName,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text('\$${product.oldPrice}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.lineThrough)),
                        const SizedBox(width: AppSizes.spaceBtwItems),
                        Text('\$${product.price}',
                            style: Theme.of(context).textTheme.headlineMedium),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
              const Divider(),
              Text(
                'Product Details',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                product.treatmentInfo,
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'Rating and Reviews',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(children: [
                Text(
                  product.rating.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(width: AppSizes.spaceBtwItems4),
                const Icon(Icons.star_half,
                    color: Colors.amber, size: AppSizes.iconMd),
                const SizedBox(width: AppSizes.spaceBtwItems4),
                Flexible(
                  child: Text(
                    '${product.ratingsCount} Ratings and ${product.reviews.length} Reviews',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ]),
              const ReviewSection(),
            ]),
          ),
        ),
        const SectionSeparation(
          separationText: 'Related Items',
          isAction: false,
        )
      ],
    );
  }
}
