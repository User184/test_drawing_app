// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'render_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RenderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderEventCopyWith<$Res> {
  factory $RenderEventCopyWith(
          RenderEvent value, $Res Function(RenderEvent) then) =
      _$RenderEventCopyWithImpl<$Res, RenderEvent>;
}

/// @nodoc
class _$RenderEventCopyWithImpl<$Res, $Val extends RenderEvent>
    implements $RenderEventCopyWith<$Res> {
  _$RenderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeCurImplCopyWith<$Res> {
  factory _$$ChangeCurImplCopyWith(
          _$ChangeCurImpl value, $Res Function(_$ChangeCurImpl) then) =
      __$$ChangeCurImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset? point});
}

/// @nodoc
class __$$ChangeCurImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$ChangeCurImpl>
    implements _$$ChangeCurImplCopyWith<$Res> {
  __$$ChangeCurImplCopyWithImpl(
      _$ChangeCurImpl _value, $Res Function(_$ChangeCurImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(_$ChangeCurImpl(
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc

class _$ChangeCurImpl extends ChangeCur {
  const _$ChangeCurImpl({this.point}) : super._();

  @override
  final Offset? point;

  @override
  String toString() {
    return 'RenderEvent.changeCurrent(point: $point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurImpl &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurImplCopyWith<_$ChangeCurImpl> get copyWith =>
      __$$ChangeCurImplCopyWithImpl<_$ChangeCurImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return changeCurrent(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return changeCurrent?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (changeCurrent != null) {
      return changeCurrent(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return changeCurrent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return changeCurrent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (changeCurrent != null) {
      return changeCurrent(this);
    }
    return orElse();
  }
}

abstract class ChangeCur extends RenderEvent {
  const factory ChangeCur({final Offset? point}) = _$ChangeCurImpl;
  const ChangeCur._() : super._();

  Offset? get point;
  @JsonKey(ignore: true)
  _$$ChangeCurImplCopyWith<_$ChangeCurImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStartImplCopyWith<$Res> {
  factory _$$ChangeStartImplCopyWith(
          _$ChangeStartImpl value, $Res Function(_$ChangeStartImpl) then) =
      __$$ChangeStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset? point});
}

/// @nodoc
class __$$ChangeStartImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$ChangeStartImpl>
    implements _$$ChangeStartImplCopyWith<$Res> {
  __$$ChangeStartImplCopyWithImpl(
      _$ChangeStartImpl _value, $Res Function(_$ChangeStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(_$ChangeStartImpl(
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc

class _$ChangeStartImpl extends ChangeStart {
  const _$ChangeStartImpl({this.point}) : super._();

  @override
  final Offset? point;

  @override
  String toString() {
    return 'RenderEvent.changeStart(point: $point)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStartImpl &&
            (identical(other.point, point) || other.point == point));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStartImplCopyWith<_$ChangeStartImpl> get copyWith =>
      __$$ChangeStartImplCopyWithImpl<_$ChangeStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return changeStart(point);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return changeStart?.call(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (changeStart != null) {
      return changeStart(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return changeStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return changeStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (changeStart != null) {
      return changeStart(this);
    }
    return orElse();
  }
}

abstract class ChangeStart extends RenderEvent {
  const factory ChangeStart({final Offset? point}) = _$ChangeStartImpl;
  const ChangeStart._() : super._();

  Offset? get point;
  @JsonKey(ignore: true)
  _$$ChangeStartImplCopyWith<_$ChangeStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopRenderImplCopyWith<$Res> {
  factory _$$StopRenderImplCopyWith(
          _$StopRenderImpl value, $Res Function(_$StopRenderImpl) then) =
      __$$StopRenderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopRenderImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$StopRenderImpl>
    implements _$$StopRenderImplCopyWith<$Res> {
  __$$StopRenderImplCopyWithImpl(
      _$StopRenderImpl _value, $Res Function(_$StopRenderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopRenderImpl extends StopRender {
  const _$StopRenderImpl() : super._();

  @override
  String toString() {
    return 'RenderEvent.stopRender()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopRenderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return stopRender();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return stopRender?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (stopRender != null) {
      return stopRender();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return stopRender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return stopRender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (stopRender != null) {
      return stopRender(this);
    }
    return orElse();
  }
}

abstract class StopRender extends RenderEvent {
  const factory StopRender() = _$StopRenderImpl;
  const StopRender._() : super._();
}

/// @nodoc
abstract class _$$GetPolygonImplCopyWith<$Res> {
  factory _$$GetPolygonImplCopyWith(
          _$GetPolygonImpl value, $Res Function(_$GetPolygonImpl) then) =
      __$$GetPolygonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPolygonImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$GetPolygonImpl>
    implements _$$GetPolygonImplCopyWith<$Res> {
  __$$GetPolygonImplCopyWithImpl(
      _$GetPolygonImpl _value, $Res Function(_$GetPolygonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPolygonImpl extends GetPolygon {
  const _$GetPolygonImpl() : super._();

  @override
  String toString() {
    return 'RenderEvent.getPolygon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPolygonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return getPolygon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return getPolygon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (getPolygon != null) {
      return getPolygon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return getPolygon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return getPolygon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (getPolygon != null) {
      return getPolygon(this);
    }
    return orElse();
  }
}

abstract class GetPolygon extends RenderEvent {
  const factory GetPolygon() = _$GetPolygonImpl;
  const GetPolygon._() : super._();
}

/// @nodoc
abstract class _$$GetGridImplCopyWith<$Res> {
  factory _$$GetGridImplCopyWith(
          _$GetGridImpl value, $Res Function(_$GetGridImpl) then) =
      __$$GetGridImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? width, double? height});
}

/// @nodoc
class __$$GetGridImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$GetGridImpl>
    implements _$$GetGridImplCopyWith<$Res> {
  __$$GetGridImplCopyWithImpl(
      _$GetGridImpl _value, $Res Function(_$GetGridImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$GetGridImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$GetGridImpl extends GetGrid {
  const _$GetGridImpl({this.width, this.height}) : super._();

  @override
  final double? width;
  @override
  final double? height;

  @override
  String toString() {
    return 'RenderEvent.getGridOffset(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGridImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGridImplCopyWith<_$GetGridImpl> get copyWith =>
      __$$GetGridImplCopyWithImpl<_$GetGridImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return getGridOffset(width, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return getGridOffset?.call(width, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (getGridOffset != null) {
      return getGridOffset(width, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return getGridOffset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return getGridOffset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (getGridOffset != null) {
      return getGridOffset(this);
    }
    return orElse();
  }
}

abstract class GetGrid extends RenderEvent {
  const factory GetGrid({final double? width, final double? height}) =
      _$GetGridImpl;
  const GetGrid._() : super._();

  double? get width;
  double? get height;
  @JsonKey(ignore: true)
  _$$GetGridImplCopyWith<_$GetGridImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttractionImplCopyWith<$Res> {
  factory _$$AttractionImplCopyWith(
          _$AttractionImpl value, $Res Function(_$AttractionImpl) then) =
      __$$AttractionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttractionImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$AttractionImpl>
    implements _$$AttractionImplCopyWith<$Res> {
  __$$AttractionImplCopyWithImpl(
      _$AttractionImpl _value, $Res Function(_$AttractionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AttractionImpl extends Attraction {
  const _$AttractionImpl() : super._();

  @override
  String toString() {
    return 'RenderEvent.attraction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AttractionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return attraction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return attraction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (attraction != null) {
      return attraction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return attraction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return attraction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (attraction != null) {
      return attraction(this);
    }
    return orElse();
  }
}

abstract class Attraction extends RenderEvent {
  const factory Attraction() = _$AttractionImpl;
  const Attraction._() : super._();
}

/// @nodoc
abstract class _$$UpdatePolygonImplCopyWith<$Res> {
  factory _$$UpdatePolygonImplCopyWith(
          _$UpdatePolygonImpl value, $Res Function(_$UpdatePolygonImpl) then) =
      __$$UpdatePolygonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset? offset, int? index});
}

/// @nodoc
class __$$UpdatePolygonImplCopyWithImpl<$Res>
    extends _$RenderEventCopyWithImpl<$Res, _$UpdatePolygonImpl>
    implements _$$UpdatePolygonImplCopyWith<$Res> {
  __$$UpdatePolygonImplCopyWithImpl(
      _$UpdatePolygonImpl _value, $Res Function(_$UpdatePolygonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? index = freezed,
  }) {
    return _then(_$UpdatePolygonImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdatePolygonImpl extends UpdatePolygon {
  const _$UpdatePolygonImpl({this.offset, this.index}) : super._();

  @override
  final Offset? offset;
  @override
  final int? index;

  @override
  String toString() {
    return 'RenderEvent.updatePolygon(offset: $offset, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePolygonImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePolygonImplCopyWith<_$UpdatePolygonImpl> get copyWith =>
      __$$UpdatePolygonImplCopyWithImpl<_$UpdatePolygonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset? point) changeCurrent,
    required TResult Function(Offset? point) changeStart,
    required TResult Function() stopRender,
    required TResult Function() getPolygon,
    required TResult Function(double? width, double? height) getGridOffset,
    required TResult Function() attraction,
    required TResult Function(Offset? offset, int? index) updatePolygon,
  }) {
    return updatePolygon(offset, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset? point)? changeCurrent,
    TResult? Function(Offset? point)? changeStart,
    TResult? Function()? stopRender,
    TResult? Function()? getPolygon,
    TResult? Function(double? width, double? height)? getGridOffset,
    TResult? Function()? attraction,
    TResult? Function(Offset? offset, int? index)? updatePolygon,
  }) {
    return updatePolygon?.call(offset, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset? point)? changeCurrent,
    TResult Function(Offset? point)? changeStart,
    TResult Function()? stopRender,
    TResult Function()? getPolygon,
    TResult Function(double? width, double? height)? getGridOffset,
    TResult Function()? attraction,
    TResult Function(Offset? offset, int? index)? updatePolygon,
    required TResult orElse(),
  }) {
    if (updatePolygon != null) {
      return updatePolygon(offset, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCur value) changeCurrent,
    required TResult Function(ChangeStart value) changeStart,
    required TResult Function(StopRender value) stopRender,
    required TResult Function(GetPolygon value) getPolygon,
    required TResult Function(GetGrid value) getGridOffset,
    required TResult Function(Attraction value) attraction,
    required TResult Function(UpdatePolygon value) updatePolygon,
  }) {
    return updatePolygon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCur value)? changeCurrent,
    TResult? Function(ChangeStart value)? changeStart,
    TResult? Function(StopRender value)? stopRender,
    TResult? Function(GetPolygon value)? getPolygon,
    TResult? Function(GetGrid value)? getGridOffset,
    TResult? Function(Attraction value)? attraction,
    TResult? Function(UpdatePolygon value)? updatePolygon,
  }) {
    return updatePolygon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCur value)? changeCurrent,
    TResult Function(ChangeStart value)? changeStart,
    TResult Function(StopRender value)? stopRender,
    TResult Function(GetPolygon value)? getPolygon,
    TResult Function(GetGrid value)? getGridOffset,
    TResult Function(Attraction value)? attraction,
    TResult Function(UpdatePolygon value)? updatePolygon,
    required TResult orElse(),
  }) {
    if (updatePolygon != null) {
      return updatePolygon(this);
    }
    return orElse();
  }
}

abstract class UpdatePolygon extends RenderEvent {
  const factory UpdatePolygon({final Offset? offset, final int? index}) =
      _$UpdatePolygonImpl;
  const UpdatePolygon._() : super._();

  Offset? get offset;
  int? get index;
  @JsonKey(ignore: true)
  _$$UpdatePolygonImplCopyWith<_$UpdatePolygonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RenderState {
  List<Offset?>? get line => throw _privateConstructorUsedError;
  List<List<Offset>>? get listLine => throw _privateConstructorUsedError;
  Offset? get startPoint => throw _privateConstructorUsedError;
  Offset? get currentPoint => throw _privateConstructorUsedError;
  bool get polygon => throw _privateConstructorUsedError;
  List<Offset>? get listPointsPolygon => throw _privateConstructorUsedError;
  List<double>? get listLengthsSide => throw _privateConstructorUsedError;
  List<Offset>? get listDotsGrid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Offset?>? line,
            List<List<Offset>>? listLine,
            Offset? startPoint,
            Offset? currentPoint,
            bool polygon,
            List<Offset>? listPointsPolygon,
            List<double>? listLengthsSide,
            List<Offset>? listDotsGrid)
        valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Offset?>? line,
            List<List<Offset>>? listLine,
            Offset? startPoint,
            Offset? currentPoint,
            bool polygon,
            List<Offset>? listPointsPolygon,
            List<double>? listLengthsSide,
            List<Offset>? listDotsGrid)?
        valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Offset?>? line,
            List<List<Offset>>? listLine,
            Offset? startPoint,
            Offset? currentPoint,
            bool polygon,
            List<Offset>? listPointsPolygon,
            List<double>? listLengthsSide,
            List<Offset>? listDotsGrid)?
        valueObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? valueObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RenderStateCopyWith<RenderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderStateCopyWith<$Res> {
  factory $RenderStateCopyWith(
          RenderState value, $Res Function(RenderState) then) =
      _$RenderStateCopyWithImpl<$Res, RenderState>;
  @useResult
  $Res call(
      {List<Offset?>? line,
      List<List<Offset>>? listLine,
      Offset? startPoint,
      Offset? currentPoint,
      bool polygon,
      List<Offset>? listPointsPolygon,
      List<double>? listLengthsSide,
      List<Offset>? listDotsGrid});
}

/// @nodoc
class _$RenderStateCopyWithImpl<$Res, $Val extends RenderState>
    implements $RenderStateCopyWith<$Res> {
  _$RenderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = freezed,
    Object? listLine = freezed,
    Object? startPoint = freezed,
    Object? currentPoint = freezed,
    Object? polygon = null,
    Object? listPointsPolygon = freezed,
    Object? listLengthsSide = freezed,
    Object? listDotsGrid = freezed,
  }) {
    return _then(_value.copyWith(
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as List<Offset?>?,
      listLine: freezed == listLine
          ? _value.listLine
          : listLine // ignore: cast_nullable_to_non_nullable
              as List<List<Offset>>?,
      startPoint: freezed == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as Offset?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as Offset?,
      polygon: null == polygon
          ? _value.polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as bool,
      listPointsPolygon: freezed == listPointsPolygon
          ? _value.listPointsPolygon
          : listPointsPolygon // ignore: cast_nullable_to_non_nullable
              as List<Offset>?,
      listLengthsSide: freezed == listLengthsSide
          ? _value.listLengthsSide
          : listLengthsSide // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      listDotsGrid: freezed == listDotsGrid
          ? _value.listDotsGrid
          : listDotsGrid // ignore: cast_nullable_to_non_nullable
              as List<Offset>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $RenderStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Offset?>? line,
      List<List<Offset>>? listLine,
      Offset? startPoint,
      Offset? currentPoint,
      bool polygon,
      List<Offset>? listPointsPolygon,
      List<double>? listLengthsSide,
      List<Offset>? listDotsGrid});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$RenderStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = freezed,
    Object? listLine = freezed,
    Object? startPoint = freezed,
    Object? currentPoint = freezed,
    Object? polygon = null,
    Object? listPointsPolygon = freezed,
    Object? listLengthsSide = freezed,
    Object? listDotsGrid = freezed,
  }) {
    return _then(_$StateImpl(
      line: freezed == line
          ? _value._line
          : line // ignore: cast_nullable_to_non_nullable
              as List<Offset?>?,
      listLine: freezed == listLine
          ? _value._listLine
          : listLine // ignore: cast_nullable_to_non_nullable
              as List<List<Offset>>?,
      startPoint: freezed == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as Offset?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as Offset?,
      polygon: null == polygon
          ? _value.polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as bool,
      listPointsPolygon: freezed == listPointsPolygon
          ? _value._listPointsPolygon
          : listPointsPolygon // ignore: cast_nullable_to_non_nullable
              as List<Offset>?,
      listLengthsSide: freezed == listLengthsSide
          ? _value._listLengthsSide
          : listLengthsSide // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      listDotsGrid: freezed == listDotsGrid
          ? _value._listDotsGrid
          : listDotsGrid // ignore: cast_nullable_to_non_nullable
              as List<Offset>?,
    ));
  }
}

/// @nodoc

class _$StateImpl extends _State {
  const _$StateImpl(
      {final List<Offset?>? line,
      final List<List<Offset>>? listLine,
      this.startPoint,
      this.currentPoint,
      this.polygon = false,
      final List<Offset>? listPointsPolygon,
      final List<double>? listLengthsSide,
      final List<Offset>? listDotsGrid})
      : _line = line,
        _listLine = listLine,
        _listPointsPolygon = listPointsPolygon,
        _listLengthsSide = listLengthsSide,
        _listDotsGrid = listDotsGrid,
        super._();

  final List<Offset?>? _line;
  @override
  List<Offset?>? get line {
    final value = _line;
    if (value == null) return null;
    if (_line is EqualUnmodifiableListView) return _line;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<Offset>>? _listLine;
  @override
  List<List<Offset>>? get listLine {
    final value = _listLine;
    if (value == null) return null;
    if (_listLine is EqualUnmodifiableListView) return _listLine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Offset? startPoint;
  @override
  final Offset? currentPoint;
  @override
  @JsonKey()
  final bool polygon;
  final List<Offset>? _listPointsPolygon;
  @override
  List<Offset>? get listPointsPolygon {
    final value = _listPointsPolygon;
    if (value == null) return null;
    if (_listPointsPolygon is EqualUnmodifiableListView)
      return _listPointsPolygon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _listLengthsSide;
  @override
  List<double>? get listLengthsSide {
    final value = _listLengthsSide;
    if (value == null) return null;
    if (_listLengthsSide is EqualUnmodifiableListView) return _listLengthsSide;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Offset>? _listDotsGrid;
  @override
  List<Offset>? get listDotsGrid {
    final value = _listDotsGrid;
    if (value == null) return null;
    if (_listDotsGrid is EqualUnmodifiableListView) return _listDotsGrid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RenderState.valueObject(line: $line, listLine: $listLine, startPoint: $startPoint, currentPoint: $currentPoint, polygon: $polygon, listPointsPolygon: $listPointsPolygon, listLengthsSide: $listLengthsSide, listDotsGrid: $listDotsGrid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            const DeepCollectionEquality().equals(other._line, _line) &&
            const DeepCollectionEquality().equals(other._listLine, _listLine) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.currentPoint, currentPoint) ||
                other.currentPoint == currentPoint) &&
            (identical(other.polygon, polygon) || other.polygon == polygon) &&
            const DeepCollectionEquality()
                .equals(other._listPointsPolygon, _listPointsPolygon) &&
            const DeepCollectionEquality()
                .equals(other._listLengthsSide, _listLengthsSide) &&
            const DeepCollectionEquality()
                .equals(other._listDotsGrid, _listDotsGrid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_line),
      const DeepCollectionEquality().hash(_listLine),
      startPoint,
      currentPoint,
      polygon,
      const DeepCollectionEquality().hash(_listPointsPolygon),
      const DeepCollectionEquality().hash(_listLengthsSide),
      const DeepCollectionEquality().hash(_listDotsGrid));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Offset?>? line,
            List<List<Offset>>? listLine,
            Offset? startPoint,
            Offset? currentPoint,
            bool polygon,
            List<Offset>? listPointsPolygon,
            List<double>? listLengthsSide,
            List<Offset>? listDotsGrid)
        valueObject,
  }) {
    return valueObject(line, listLine, startPoint, currentPoint, polygon,
        listPointsPolygon, listLengthsSide, listDotsGrid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Offset?>? line,
            List<List<Offset>>? listLine,
            Offset? startPoint,
            Offset? currentPoint,
            bool polygon,
            List<Offset>? listPointsPolygon,
            List<double>? listLengthsSide,
            List<Offset>? listDotsGrid)?
        valueObject,
  }) {
    return valueObject?.call(line, listLine, startPoint, currentPoint, polygon,
        listPointsPolygon, listLengthsSide, listDotsGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Offset?>? line,
            List<List<Offset>>? listLine,
            Offset? startPoint,
            Offset? currentPoint,
            bool polygon,
            List<Offset>? listPointsPolygon,
            List<double>? listLengthsSide,
            List<Offset>? listDotsGrid)?
        valueObject,
    required TResult orElse(),
  }) {
    if (valueObject != null) {
      return valueObject(line, listLine, startPoint, currentPoint, polygon,
          listPointsPolygon, listLengthsSide, listDotsGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) valueObject,
  }) {
    return valueObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? valueObject,
  }) {
    return valueObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? valueObject,
    required TResult orElse(),
  }) {
    if (valueObject != null) {
      return valueObject(this);
    }
    return orElse();
  }
}

abstract class _State extends RenderState {
  const factory _State(
      {final List<Offset?>? line,
      final List<List<Offset>>? listLine,
      final Offset? startPoint,
      final Offset? currentPoint,
      final bool polygon,
      final List<Offset>? listPointsPolygon,
      final List<double>? listLengthsSide,
      final List<Offset>? listDotsGrid}) = _$StateImpl;
  const _State._() : super._();

  @override
  List<Offset?>? get line;
  @override
  List<List<Offset>>? get listLine;
  @override
  Offset? get startPoint;
  @override
  Offset? get currentPoint;
  @override
  bool get polygon;
  @override
  List<Offset>? get listPointsPolygon;
  @override
  List<double>? get listLengthsSide;
  @override
  List<Offset>? get listDotsGrid;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
