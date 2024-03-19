import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'render_bloc.freezed.dart';

@freezed
class RenderEvent with _$RenderEvent {
  const RenderEvent._();

  const factory RenderEvent.changeCurrent({Offset? point}) = ChangeCur;
  const factory RenderEvent.changeStart({Offset? point}) = ChangeStart;
  const factory RenderEvent.stopRender() = StopRender;
  const factory RenderEvent.getPolygon() = GetPolygon;
  const factory RenderEvent.getGridOffset({double? width, double? height}) =
      GetGrid;
  const factory RenderEvent.attraction() = Attraction;
  const factory RenderEvent.updatePolygon({Offset? offset, int? index}) =
      UpdatePolygon;
}

@freezed
class RenderState with _$RenderState {
  const RenderState._();
  const factory RenderState.valueObject({
    List<Offset?>? line,
    List<List<Offset>>? listLine,
    Offset? startPoint,
    Offset? currentPoint,
    @Default(false) bool polygon,
    List<Offset>? listPointsPolygon,
    List<double>? listLengthsSide,
    List<Offset>? listDotsGrid,
  }) = _State;
}

class RenderBloc extends Bloc<RenderEvent, RenderState> {
  RenderBloc() : super(const RenderState.valueObject()) {
    on<ChangeStart>(_onChangeStartPoint);
    on<ChangeCur>(_onChangeCurrentPoint);
    on<StopRender>(_onStopRender);
    on<GetPolygon>(_onGetPolygon);
    on<GetGrid>(_onGetGrid);
    on<Attraction>(_onAttractionCoordinates);
    on<UpdatePolygon>(_onUpdatePolygon);
  }

  /// Первое касание экрана, получение стартовой координаты линии
  void _onChangeStartPoint(ChangeStart event, Emitter<RenderState> emit) {
    final oldLine = state.line;
    final point = (oldLine == null) ? event.point : oldLine[1];

    emit(state.copyWith(startPoint: point));
  }

  /// Получение конечной координаты рендеринга линии,
  /// после выполнения [_onChangeStartPoint]
  void _onChangeCurrentPoint(ChangeCur event, Emitter<RenderState> emit) {
    final point = event.point;

    emit(state.copyWith(currentPoint: point));
  }

  /// Срабатывает при окончании рендеринга текущей линии,
  /// получения ее координат и внесения их в общий список стейта [listLine]
  void _onStopRender(StopRender event, Emitter<RenderState> emit) {
    final startPoint = state.startPoint;
    final currentPoint = state.currentPoint;
    final stateListLine = state.listLine;
    List<List<Offset>>? listLine;

    if (startPoint != null && currentPoint != null) {
      // Проверка на пересечение текущей линии с координатами [startPoint]
      // и [currentPoint] c остальными из [stateListLine]

      if (stateListLine != null && stateListLine.length > 1) {
        int counter = 1;
        for (List<Offset> line in stateListLine) {
          bool isIntersect;
          if (counter != stateListLine.length) {
            isIntersect = lineSegmentsIntersect(
              line.first,
              line.last,
              startPoint,
              currentPoint,
            );
            if (isIntersect == true) {
              emit(state.copyWith(currentPoint: startPoint));
              return;
            }
            counter++;
          }
        }
      }

      // Проверка растояни между самой первой координаты списка [stateListLine]
      // и [currentPoint]

      if (stateListLine != null && stateListLine.length > 1) {
        final distancePoints = distance(
          pointA: stateListLine.first[0],
          pointB: currentPoint,
        );

        if (distancePoints < 110) {
          emit(state.copyWith(
            currentPoint: stateListLine.first[0],
            polygon: true,
          ));
          add(const RenderEvent.getPolygon());
          return;
        }
      }

      // Если метод [lineSegmentsIntersect] не вернул true,
      // коордираты [startPoint] и [currentPoint] добавляются в общий список [stateListLine]

      List<Offset> currentLine = [startPoint, currentPoint];

      if (stateListLine != null) {
        listLine = List<List<Offset>>.from(stateListLine)..add(currentLine);
      } else {
        listLine = [currentLine];
      }

      emit(state.copyWith(line: currentLine, listLine: listLine));
    }
  }

  /// Получение списка вершин и длин сторон polygon

  void _onGetPolygon(GetPolygon event, Emitter<RenderState> emit) {
    final List<List<Offset>>? listLine = state.listLine;
    List<Offset>? listPoints = [];
    List<double>? listLengths = [];

    int counter = 1;

    // Получение списка координат вершин [listPoints]
    if (listLine != null) {
      for (List<Offset> listOffset in listLine) {
        listPoints.add(listOffset.first);
        if (counter == listLine.length) {
          listPoints.add(listOffset.last);
        }
        counter++;
      }
      counter = 0;
    }

    // Получение списка длин сторон [listLengths]
    for (Offset offsetPoint in listPoints) {
      final double length;
      if (counter < listPoints.length) {
        if (counter == listPoints.length - 1) {
          length = distance(pointA: listPoints.last, pointB: listPoints.first);
          listLengths.add(length);
        } else {
          length =
              distance(pointA: offsetPoint, pointB: listPoints[counter + 1]);
          listLengths.add(length);
        }
        counter++;
      }
    }
    emit(state.copyWith(
      listPointsPolygon: listPoints,
      listLengthsSide: listLengths,
    ));
  }

  /// Получение координат сетки из точек

  void _onGetGrid(GetGrid event, Emitter<RenderState> emit) {
    final width = event.width;
    final height = event.height;
    if (width != null && height != null) {
      const step = 30;
      final int cauntRow = (width ~/ step) + 1;
      final int cauntColumn = (height ~/ step) + 1;
      double x = 0;
      double y = 30;
      List<Offset> listOffset = [];
      List<double> xList = [];
      List<double> yList = [];

      for (int n = 1; n <= cauntRow; n++) {
        xList.add(x);
        x = x + step;
      }

      for (int i = 1; i <= cauntColumn; i++) {
        yList.add(y);
        y = y + step;
      }

      for (int i = 0; i < xList.length; i++) {
        for (int j = 0; j < yList.length; j++) {
          listOffset.add(Offset(xList[i], yList[j]));
        }
      }
      emit(state.copyWith(listDotsGrid: listOffset));
    }
  }

  /// Поиск ближайших координат сетки [listDotsGrid] к вершинам polygon [listPointsPolygon]
  /// с последущим обновлением кординат вершин polygon [listPointsPolygon]
  void _onAttractionCoordinates(Attraction event, Emitter<RenderState> emit) {
    final listDotsGrid = state.listDotsGrid;
    final listPointsPolygon = state.listPointsPolygon;

    List<double> list = [];
    List<Offset> filteredllist = [];

    if (listDotsGrid != null && listPointsPolygon != null) {
      for (int i = 0; i < listPointsPolygon.length; i++) {
        for (Offset offset in listDotsGrid) {
          double dist = distance(pointA: listPointsPolygon[i], pointB: offset);
          list.add(dist);
        }
        double min = list.reduce((a, b) => (a < b) ? a : b);
        int index = list.indexOf(min);
        Offset offsetMin = listDotsGrid.elementAt(index);
        filteredllist.add(offsetMin);
        list.clear();
      }
    }

    emit(state.copyWith(listPointsPolygon: filteredllist));
  }

  /// Обновление координаты одной из вершин polygon по индексу
  void _onUpdatePolygon(UpdatePolygon event, Emitter<RenderState> emit) {
    final offset = event.offset;
    final index = event.index;
    List<Offset>? listPointsPolygon = state.listPointsPolygon;
    List<double>? listLengths = [];

    if (offset != null && index != null && listPointsPolygon != null) {
      // Получение обновленного списка вершин polygon[listCopy]
      List<Offset>? listCopy = listPointsPolygon.toList();
      listCopy[index] = offset;
      // Получение списка длин сторон [listLengths]
      int counter = 0;
      for (Offset offsetPoint in listCopy) {
        final double length;
        if (counter < listCopy.length) {
          if (counter == listCopy.length - 1) {
            length = distance(pointA: listCopy.last, pointB: listCopy.first);
            listLengths.add(length);
          } else {
            length =
                distance(pointA: offsetPoint, pointB: listCopy[counter + 1]);
            listLengths.add(length);
          }
          counter++;
        }
      }
      emit(state.copyWith(
          listPointsPolygon: listCopy, listLengthsSide: listLengths));
    }
  }
}

/// Метод проверки пересечения текущей линии с другими,
/// если есть пересечение, возвращает - true

bool lineSegmentsIntersect(
    Offset pointA1, Offset pointA2, Offset pointB1, Offset pointB2) {
  var aDx = pointA2.dx - pointA1.dx;
  var aDy = pointA2.dy - pointA1.dy;
  var bDx = pointB2.dx - pointB1.dx;
  var bDy = pointB2.dy - pointB1.dy;

  var s = (-aDy * (pointA1.dx - pointB1.dx) + aDx * (pointA1.dy - pointB1.dy)) /
      (-bDx * aDy + aDx * bDy);
  var t = (bDx * (pointA1.dy - pointB1.dy) - bDy * (pointA1.dx - pointB1.dx)) /
      (-bDx * aDy + aDx * bDy);

  bool isIntersect = (s >= 0 && s <= 1 && t >= 0 && t <= 1);
  return isIntersect;
}

/// Растояние между координатой A и B

double distance({
  required Offset pointA,
  required Offset pointB,
}) {
  Offset a = pointA;
  Offset b = pointB;
  return sqrt(pow(a.dx - b.dx, 2) + pow(a.dy - b.dy, 2));
}
