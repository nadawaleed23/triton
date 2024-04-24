import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 4, 96, 213)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.9993552,size.height*0.0014286);
    path_0.quadraticBezierTo(size.width*1.0220167,size.height*0.7950714,size.width*0.9188083,size.height*0.7998286);
    path_0.cubicTo(size.width*0.6700500,size.height*0.8784000,size.width*0.0469500,size.height*0.6715496,size.width*-0.0005333,size.height*1.1191121);
    path_0.quadraticBezierTo(size.width*0.0001750,size.height*0.9216961,size.width*0.0009559,size.height*0.0022099);
    path_0.lineTo(size.width*0.0009559,size.height*0.0022099);
    path_0.lineTo(size.width*0.0009559,size.height*0.0022099);
    path_0.lineTo(size.width*0.0009559,size.height*0.0022099);
    path_0.lineTo(size.width*0.9993552,size.height*0.0014286);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

