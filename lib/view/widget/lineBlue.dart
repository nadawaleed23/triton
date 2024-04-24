import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class LineBlue extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(29.9741,-44.5597);
path_0.cubicTo(62.9665,52.2616,-11.1285,57.9987,-52.3001,48.7645);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
paint_0_stroke.color=Color(0xff0460D5).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffffffff).withOpacity(0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}