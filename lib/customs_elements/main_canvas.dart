import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kruchenko_test_app/blocs/render_bloc.dart';

@immutable
class MainCanvas extends StatelessWidget {
  const MainCanvas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<RenderBloc, RenderState>(
      builder: (context, state) {
        return CustomPaint(
          size: Size(size.width, size.height),
          painter: RPSCustomPainter(
            listLine: state.listLine,
            startPoint: state.startPoint,
            endPoint: state.currentPoint,
            listPointsPolygon: state.listPointsPolygon,
            listLengthsSide: state.listLengthsSide,
            polygon: state.polygon,
            listDotsGrid: state.listDotsGrid,
          ),
          child: SizedBox(
            width: size.width,
            height: size.height,
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'MainCanvas StatelessWidget'),
          ),
      );
}

class RPSCustomPainter extends CustomPainter {
  final Offset? startPoint;
  final Offset? endPoint;
  final List<List<Offset>>? listLine;
  final List<Offset>? listPointsPolygon;
  final List<double>? listLengthsSide;
  final bool polygon;
  List<Offset>? listDotsGrid;

  RPSCustomPainter({
    required this.startPoint,
    required this.endPoint,
    required this.listLine,
    required this.listPointsPolygon,
    required this.listLengthsSide,
    required this.polygon,
    required this.listDotsGrid,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final _listLine = listLine;
    final _listPointsPolygon = listPointsPolygon;

    Paint paintDot = Paint()
      ..color = const Color(0xFF0098EE).withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final radius = size.width * 0.004;

    final listDots = listDotsGrid;
    if (listDots != null) {
      for (Offset offset in listDots) {
        canvas.drawCircle(offset, radius, paintDot);
      }
    }

    // Paint polygon
    Paint paintPolygon = Paint()
      ..color = const Color(0xFFFDFDFD)
      ..style = PaintingStyle.fill
      ..strokeWidth = 7;

    // Paint line & polygon
    Paint paint = Paint()
      ..color = const Color(0xFF000000)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 7;

    // Render polygon
    if (_listPointsPolygon != null) {
      Path path = Path();

      path.addPolygon([..._listPointsPolygon], true);
      canvas.drawPath(path, paintPolygon);
      canvas.drawPath(path, paint);

      // Paint circle point for polygon
      Paint paintPointFill = Paint()
        ..color = const Color(0xFFFDFDFD)
        ..style = PaintingStyle.fill;

      for (Offset offset in _listPointsPolygon) {
        canvas.drawCircle(offset, 5, paintPointFill);

        Paint paintPointStroke = Paint()
          ..color = const Color(0xFF7D7D7D)
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 1.0;
        canvas.drawCircle(offset, 5, paintPointStroke);
      }
    }

    // Render line
    if (_listLine != null) {
      for (List<Offset> line in _listLine) {
        if (!polygon) {
          canvas.drawLine(line[0], line[1], paint);
          // Paint circle point for lines
          Paint paintPointFill = Paint()
            ..color = const Color(0xFF0098EE)
            ..style = PaintingStyle.fill;

          canvas.drawCircle(line[0], 5, paintPointFill);

          Paint paintPointStroke = Paint()
            ..color =
                polygon ? const Color(0xFF7D7D7D) : const Color(0xFFFFFFFF)
            ..style = PaintingStyle.stroke
            ..strokeCap = StrokeCap.round
            ..strokeWidth = 2.0;
          canvas.drawCircle(line[0], 5, paintPointStroke);
        }
      }
    }

    // Text length sides painter
    final _listLengthsSide = listLengthsSide;

    renderLengthSides(
      canvas: canvas,
      listLengthsSide: _listLengthsSide,
      listPointsPolygon: _listPointsPolygon,
      size: size,
    );
  }

  void renderLengthSides({
    required Canvas canvas,
    required List<double>? listLengthsSide,
    required List<Offset>? listPointsPolygon,
    required Size size,
  }) {
    if (listLengthsSide != null && listPointsPolygon != null) {
      const textStyle = TextStyle(
        color: Color(0xFF0098EE),
        fontSize: 13,
        fontWeight: FontWeight.w500,
      );

      for (int i = 0; i < listLengthsSide.length; i++) {
        double x;
        double y;
        String length = '';

        if (i == listLengthsSide.length - 1) {
          x = (listPointsPolygon.last.dx + listPointsPolygon.first.dx) / 2;
          y = (listPointsPolygon.last.dy + listPointsPolygon.first.dy) / 2;
          length = (listLengthsSide.last / 100).toStringAsFixed(2);
        } else {
          x = (listPointsPolygon[i].dx + listPointsPolygon[i + 1].dx) / 2;
          y = (listPointsPolygon[i].dy + listPointsPolygon[i + 1].dy) / 2;
          length = (listLengthsSide[i] / 100).toStringAsFixed(2);
        }

        TextSpan textSpan = TextSpan(
          text: length,
          style: textStyle,
        );
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
        );

        textPainter.layout(
          minWidth: 0,
          maxWidth: size.width,
        );

        const textCentrePoint = Offset(200, 300);
        final delta = Offset(textCentrePoint.dx - textPainter.size.width / 2,
            textCentrePoint.dy - textPainter.size.height / 2);

        canvas.save();
        canvas.translate(x + 26, y);
        canvas.rotate(2 * pi);
        canvas.translate(-textCentrePoint.dx, -textCentrePoint.dy);
        textPainter.paint(canvas, delta);
        canvas.restore();
      }
    }
  }

  @override
  bool shouldRepaint(covariant RPSCustomPainter oldDelegate) {
    return true;
  }
}
