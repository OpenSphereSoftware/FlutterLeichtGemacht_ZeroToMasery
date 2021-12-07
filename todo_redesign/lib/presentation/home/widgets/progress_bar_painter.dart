import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  double barWidth;
  double barHeight;
  double donePercent;
  Color backgroundColor;
  Color percentageColor;


  ProgressPainter({required this.donePercent,  required this.barHeight, required this.barWidth, required this.backgroundColor, required this.percentageColor});

  getPaint(Color color) {
    return Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint defaultBarPaint = getPaint(backgroundColor);
    Paint percentageBarPaint = getPaint(percentageColor);

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(-(barWidth / 2), -barHeight / 2) & Size(barWidth, barHeight),
            Radius.circular(barHeight / 2)),
        defaultBarPaint);
  
  canvas.drawRRect(
        RRect.fromRectAndRadius(
            Offset(-(barWidth / 2), -barHeight / 2) & Size(barWidth * donePercent, barHeight),
            Radius.circular(barHeight / 2)),
        percentageBarPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
