
import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

// Custom Painter for Discount Label
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


// Discount Label Widget
class DiscountLabel extends StatelessWidget {
  const DiscountLabel({super.key,required this.discount});
  final double discount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperFunction.screenHeight()*0.07,
      width: AppHelperFunction.screenWidth()*0.15,
      child: CustomPaint(
        size: const Size(45, 45),
        painter: RPSCustomPainter(),
        child: Transform.rotate(
          angle: -45 * 3.141592653589793238 / 180, // -45 degrees in radians
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 0),
            child: Text(
              '${discount.toStringAsFixed(0)}% OFF',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 10,color: AppColors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}