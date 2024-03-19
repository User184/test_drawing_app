import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kruchenko_test_app/customs_elements/paths/cursorPath.dart';

@immutable
class Cursor extends StatelessWidget {
  final double radius;
  const Cursor({
    required this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(radius, (radius * 0.98).toDouble()),
      painter: RPSCustomPainter(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'Cursor StatelessWidget'),
          ),
      );
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 0, size: size), paint0Fill);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04110047;
    paint1Stroke.color = const Color(0xff377BBB).withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(CursorPath.path(index: 1, size: size), paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 1, size: size), paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 2, size: size), paint2Fill);

    Paint paint3Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04110047;
    paint3Stroke.color = const Color(0xff377BBB).withOpacity(1.0);
    paint3Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(CursorPath.path(index: 3, size: size), paint3Stroke);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 3, size: size), paint3Fill);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 4, size: size), paint4Fill);

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04110047;
    paint5Stroke.color = const Color(0xff377BBB).withOpacity(1.0);
    paint5Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(CursorPath.path(index: 5, size: size), paint5Stroke);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 5, size: size), paint5Fill);

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 6, size: size), paint6Fill);

    Paint paint7Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04110047;
    paint7Stroke.color = const Color(0xff377BBB).withOpacity(1.0);
    paint7Stroke.strokeCap = StrokeCap.round;
    canvas.drawPath(CursorPath.path(index: 7, size: size), paint7Stroke);

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 7, size: size), paint7Fill);

    Paint paint8Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.12;
    paint8Stroke.color = const Color(0xff377BBB).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 8, size: size), paint8Stroke);

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffFDFDFD).withOpacity(1.0);
    canvas.drawPath(CursorPath.path(index: 8, size: size), paint8Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
