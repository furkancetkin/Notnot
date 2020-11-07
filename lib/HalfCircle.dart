import 'package:flutter/material.dart';

class HalfCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 80),
        3.14,
        3.14,
        false,
        customPaint());
    canvas.drawPath(getTrianglePath(size, 20, 15), customPaint());
  }

  Path getTrianglePath(Size size, double x, double y) {
    return Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width / 2 + x, y)
      ..lineTo(size.width / 2, y)
      ..lineTo(size.width / 2 - x, y);
  }

  Paint customPaint() {
    Paint paint = Paint();
    paint.color = Color(0xff2EA760);
    paint.isAntiAlias = true;
    paint.strokeWidth = 10;
    return paint;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
