import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kruchenko_test_app/blocs/render_bloc.dart';
import 'package:kruchenko_test_app/customs_elements/cursor.dart';

@immutable
class DrawingCanvas extends StatelessWidget {
  const DrawingCanvas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<RenderBloc, RenderState>(
      builder: (context, state) {
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              if (state.startPoint != null && state.currentPoint != null)
                CustomPaint(
                  size: Size(size.width, size.height),
                  painter: RPSCustomPainter(
                    startPoint: state.startPoint!,
                    endPoint: state.currentPoint!,
                    polygon: state.polygon,
                  ),
                ),
              if (state.startPoint != null && state.currentPoint == null)
                Positioned(
                  left: state.startPoint?.dx,
                  top: state.startPoint?.dy,
                  child: const Cursor(radius: 40),
                )
              else if (state.startPoint != null &&
                  state.currentPoint != null &&
                  !state.polygon)
                Positioned(
                  left: state.currentPoint!.dx - 20,
                  top: state.currentPoint!.dy - 20,
                  child: const Cursor(radius: 40),
                ),
            ],
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
            StringProperty('description', 'DrawingCanvas StatelessWidget'),
          ),
      );
}

class RPSCustomPainter extends CustomPainter {
  final Offset startPoint;
  final Offset endPoint;
  final bool polygon;

  RPSCustomPainter({
    required this.startPoint,
    required this.endPoint,
    required this.polygon,
  });
  @override
  void paint(Canvas canvas, Size size) {
    if (polygon) {
      return;
    }

    // Paint line
    var paint = Paint()
      ..color = const Color(0xFF000000)
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(startPoint, endPoint, paint);

    // Paint circle point
    Paint paintPoint1 = Paint()
      ..color = const Color(0xFF0098EE)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(startPoint, 5, paintPoint1);

    Paint paintPoint = Paint()
      ..color = const Color(0xFFFFFFFF)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0;
    canvas.drawCircle(startPoint, 5, paintPoint);
  }

  @override
  bool shouldRepaint(covariant RPSCustomPainter oldDelegate) {
    return true;
  }
}
