

import 'package:flutter/material.dart';

class CustomVector1 extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(41.9741,-54.5597);
path_0.cubicTo(74.9665,42.2616,0.871464,47.9987,-40.3001,38.7645);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
paint_0_stroke.color=Colors.white.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xFF0460D5).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}

class CustomVector2 extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(29.9741,-44.5597);
path_0.cubicTo(62.9665,52.2616,-11.1285,57.9987,-52.3001,48.7645);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=2;
paint_0_stroke.color=Colors.white.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xFF0460D5).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}