import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/modules/productDetails/helper/product_body.dart';
import 'package:medxpress/app/modules/productDetails/helper/product_header.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
          centerTitle: true,
        ),
        body: Obx(() {
          if (controller.product == null) {
            return const Center(child: CircularProgressIndicator());
          }
          final product = controller.product!;
          return SingleChildScrollView(
              child: Column(children: [
            Stack(children: [
              SizedBox(
                width: AppHelperFunction.screenWidth(),
                height: AppHelperFunction.screenHeight(),
              ),
              ProductHeaderSection(product: product), //Container
              Positioned(
                top: AppHelperFunction.screenHeight() * 0.20,
                child: ProductBodySection(product: product),
              ),
            ]),
          ]));
        }));
  }
}
