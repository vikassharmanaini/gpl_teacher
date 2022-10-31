import 'package:flutter/material.dart';

class CurvePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0;
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.2,
        size.width * 0.44, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.75,
        size.width * 0.8, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
