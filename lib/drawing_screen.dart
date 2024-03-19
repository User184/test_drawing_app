import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kruchenko_test_app/blocs/render_bloc.dart';
import 'package:kruchenko_test_app/customs_elements/drawing_canvas.dart';
import 'package:kruchenko_test_app/customs_elements/main_canvas.dart';
import 'package:kruchenko_test_app/widgets/left_button.dart';
import 'package:kruchenko_test_app/widgets/right_button.dart';

@immutable
class DrawingScreen extends StatefulWidget {
  const DrawingScreen({
    super.key,
  });

  @override
  State<DrawingScreen> createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  bool isAttraction = false;
  bool updatePolygon = false;
  int indexUpdatePolygon = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(),
      ),
      body: SizedBox(
        child: BlocBuilder<RenderBloc, RenderState>(
          builder: (context, state) {
            return Stack(
              children: [
                /// MainCanvas
                const MainCanvas(),

                /// DrawinggCanvas
                GestureDetector(
                  onTapDown: (TapDownDetails details) {
                    final box = context.findRenderObject() as RenderBox;
                    final offset = box.globalToLocal(details.globalPosition);
                    context
                        .read<RenderBloc>()
                        .add(RenderEvent.changeStart(point: offset));
                  },
                  onPanStart: (DragStartDetails details) =>
                      onPointerStart(details, context, state),
                  onPanUpdate: (details) =>
                      onPointerMove(details, context, state),
                  onPanEnd: (DragEndDetails details) =>
                      onPointerEnd(details, context, state),
                  behavior: HitTestBehavior.translucent,
                  child: const DrawingCanvas(),
                ),

                /// Top buttons row
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LeftButton(
                          active: (state.startPoint == null &&
                                  state.currentPoint == null) ||
                              state.polygon,
                        ),
                        RightButton(
                          onPressed: () {
                            if (state.polygon && !isAttraction) {
                              context
                                  .read<RenderBloc>()
                                  .add(const RenderEvent.attraction());
                              isAttraction = true;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  ///Start - срабатывает один раз в момент первого косания
  void onPointerStart(
    DragStartDetails details,
    BuildContext context,
    RenderState state,
  ) {
    final box = context.findRenderObject() as RenderBox;
    final offset = box.globalToLocal(details.globalPosition);
    if (!state.polygon) {
      context.read<RenderBloc>().add(RenderEvent.changeStart(point: offset));
    }

    if (state.polygon && !isAttraction) {
      touchCheck(offset: offset, listPointsPolygon: state.listPointsPolygon);
    }
  }

  ///Update - срабатывает после [onPointerStart], постоянно
  /// пока есть контакт с экраном
  void onPointerMove(
    DragUpdateDetails details,
    BuildContext context,
    RenderState state,
  ) {
    final box = context.findRenderObject() as RenderBox;
    final offset = box.globalToLocal(details.globalPosition);
    if (!state.polygon) {
      context.read<RenderBloc>().add(RenderEvent.changeCurrent(point: offset));
    }
    if (state.polygon && updatePolygon) {
      context.read<RenderBloc>().add(RenderEvent.updatePolygon(
            index: indexUpdatePolygon,
            offset: offset,
          ));
    }
  }

  ///End touch - срабатывает в самом конце, после [onPointerMove]
  void onPointerEnd(
    DragEndDetails details,
    BuildContext context,
    RenderState state,
  ) {
    if (!state.polygon) {
      context.read<RenderBloc>().add(const RenderEvent.stopRender());
    } else {
      updatePolygon = false;
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'DrawingScreen StatefulWidget'),
          ),
      );

  @override
  void didChangeDependencies() {
    final size = MediaQuery.of(context).size;
    context.read<RenderBloc>().add(RenderEvent.getGridOffset(
          height: size.height,
          width: size.width,
        ));
    super.didChangeDependencies();
  }

  void touchCheck({
    required Offset? offset,
    required List<Offset>? listPointsPolygon,
  }) {
    List<double> list = [];

    if (offset != null && listPointsPolygon != null) {
      for (int i = 0; i < listPointsPolygon.length; i++) {
        double dist = distance(pointA: offset, pointB: listPointsPolygon[i]);
        list.add(dist);
      }
      double min = list.reduce((a, b) => (a < b) ? a : b);
      if (min < 40) {
        int index = list.indexOf(min);

        updatePolygon = true;
        indexUpdatePolygon = index;
      }
    }
  }
}
