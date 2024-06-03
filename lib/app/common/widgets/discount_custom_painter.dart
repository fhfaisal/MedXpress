import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:medxpress/app/utils/constants/colors.dart';
import 'package:medxpress/app/utils/helpers/helper_function.dart';

// Custom Painter for Discount Label
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 253, 108, 87)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.0017000,size.height*1.0069000);
    path_0.quadraticBezierTo(size.width*0.0017000,size.height*0.4782000,size.width*0.0017000,size.height*0.3020000);
    path_0.cubicTo(size.width*-0.0017000,size.height*-0.0347000,size.width*-0.0387000,size.height*0.0106000,size.width*0.3038000,size.height*-0.0002000);
    path_0.quadraticBezierTo(size.width*0.4800000,size.height*-0.0002000,size.width*1.0087000,size.height*-0.0002000);
    path_0.lineTo(size.width*0.0017000,size.height*1.0069000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 253, 108, 87)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     // Layer 1
//
//     Paint paint_fill_0 = Paint()
//       ..color = const Color.fromARGB(255, 253, 108, 87)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width*0.01
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width*0.0017000,size.height*1.0069000);
//     path_0.quadraticBezierTo(size.width*0.0017000,size.height*0.4782000,size.width*0.0017000,size.height*0.3020000);
//     path_0.cubicTo(size.width*0.0033000,size.height*0.0053000,size.width*0.0063000,size.height*0.0056000,size.width*0.3038000,size.height*-0.0002000);
//     path_0.quadraticBezierTo(size.width*0.4800000,size.height*-0.0002000,size.width*1.0087000,size.height*-0.0002000);
//     path_0.lineTo(size.width*0.0017000,size.height*1.0069000);
//     path_0.close();
//
//     canvas.drawPath(path_0, paint_fill_0);
//
//
//     // Layer 1
//
//     Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(255, 253, 108, 87)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 0
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;
//
//
//
//     canvas.drawPath(path_0, paint_stroke_0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }




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