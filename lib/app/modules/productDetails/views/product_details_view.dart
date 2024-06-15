import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medxpress/app/common/widgets/section_separator.dart';
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
              child: Column(
                  children: [
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
                  Positioned(
                    top: AppHelperFunction.screenHeight()*0.70,
                      left: 0,
                      right: 0,
                      child: const SectionSeparation(separationText: 'Related Items',isAction: false,))
                  
            ]),
          ]));
        }));
  }
}
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.9886364,0);
    path_0.lineTo(0,size.height*0.9886364);
    path_0.lineTo(0,size.height*0.2727273);
    path_0.cubicTo(0,size.height*0.1220455,size.width*0.1220455,0,size.width*0.2727273,0);
    path_0.lineTo(size.width*0.9886364,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFD6C57).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


