// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of journey_detail.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JourneyDetailTearOff {
  const _$JourneyDetailTearOff();

  _JourneyDetail call(
      {required JourneyInfo<int?>? distance,
      required JourneyInfo<int?>? duration,
      PlaceStatus status = PlaceStatus.UNKNOWN_ERROR}) {
    return _JourneyDetail(
      distance: distance,
      duration: duration,
      status: status,
    );
  }
}

/// @nodoc
const $JourneyDetail = _$JourneyDetailTearOff();

/// @nodoc
mixin _$JourneyDetail {
  JourneyInfo<int?>? get distance => throw _privateConstructorUsedError;
  JourneyInfo<int?>? get duration => throw _privateConstructorUsedError;
  PlaceStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JourneyDetailCopyWith<JourneyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyDetailCopyWith<$Res> {
  factory $JourneyDetailCopyWith(
          JourneyDetail value, $Res Function(JourneyDetail) then) =
      _$JourneyDetailCopyWithImpl<$Res>;
  $Res call(
      {JourneyInfo<int?>? distance,
      JourneyInfo<int?>? duration,
      PlaceStatus status});

  $JourneyInfoCopyWith<int?, $Res>? get distance;
  $JourneyInfoCopyWith<int?, $Res>? get duration;
}

/// @nodoc
class _$JourneyDetailCopyWithImpl<$Res>
    implements $JourneyDetailCopyWith<$Res> {
  _$JourneyDetailCopyWithImpl(this._value, this._then);

  final JourneyDetail _value;
  // ignore: unused_field
  final $Res Function(JourneyDetail) _then;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as JourneyInfo<int?>?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as JourneyInfo<int?>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }

  @override
  $JourneyInfoCopyWith<int?, $Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $JourneyInfoCopyWith<int?, $Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value));
    });
  }

  @override
  $JourneyInfoCopyWith<int?, $Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $JourneyInfoCopyWith<int?, $Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value));
    });
  }
}

/// @nodoc
abstract class _$JourneyDetailCopyWith<$Res>
    implements $JourneyDetailCopyWith<$Res> {
  factory _$JourneyDetailCopyWith(
          _JourneyDetail value, $Res Function(_JourneyDetail) then) =
      __$JourneyDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {JourneyInfo<int?>? distance,
      JourneyInfo<int?>? duration,
      PlaceStatus status});

  @override
  $JourneyInfoCopyWith<int?, $Res>? get distance;
  @override
  $JourneyInfoCopyWith<int?, $Res>? get duration;
}

/// @nodoc
class __$JourneyDetailCopyWithImpl<$Res>
    extends _$JourneyDetailCopyWithImpl<$Res>
    implements _$JourneyDetailCopyWith<$Res> {
  __$JourneyDetailCopyWithImpl(
      _JourneyDetail _value, $Res Function(_JourneyDetail) _then)
      : super(_value, (v) => _then(v as _JourneyDetail));

  @override
  _JourneyDetail get _value => super._value as _JourneyDetail;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? status = freezed,
  }) {
    return _then(_JourneyDetail(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as JourneyInfo<int?>?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as JourneyInfo<int?>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }
}

/// @nodoc

class _$_JourneyDetail extends _JourneyDetail with DiagnosticableTreeMixin {
  const _$_JourneyDetail(
      {required this.distance,
      required this.duration,
      this.status = PlaceStatus.UNKNOWN_ERROR})
      : super._();

  @override
  final JourneyInfo<int?>? distance;
  @override
  final JourneyInfo<int?>? duration;
  @JsonKey(defaultValue: PlaceStatus.UNKNOWN_ERROR)
  @override
  final PlaceStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JourneyDetail(distance: $distance, duration: $duration, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JourneyDetail'))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyDetail &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distance, duration, status);

  @JsonKey(ignore: true)
  @override
  _$JourneyDetailCopyWith<_JourneyDetail> get copyWith =>
      __$JourneyDetailCopyWithImpl<_JourneyDetail>(this, _$identity);
}

abstract class _JourneyDetail extends JourneyDetail {
  const factory _JourneyDetail(
      {required JourneyInfo<int?>? distance,
      required JourneyInfo<int?>? duration,
      PlaceStatus status}) = _$_JourneyDetail;
  const _JourneyDetail._() : super._();

  @override
  JourneyInfo<int?>? get distance;
  @override
  JourneyInfo<int?>? get duration;
  @override
  PlaceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$JourneyDetailCopyWith<_JourneyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$JourneyInfoTearOff {
  const _$JourneyInfoTearOff();

  _JourneyInfo<B> call<B>(
      {required BasicTextField<String?> convert,
      required BasicTextField<B?> value}) {
    return _JourneyInfo<B>(
      convert: convert,
      value: value,
    );
  }
}

/// @nodoc
const $JourneyInfo = _$JourneyInfoTearOff();

/// @nodoc
mixin _$JourneyInfo<B> {
  BasicTextField<String?> get convert => throw _privateConstructorUsedError;
  BasicTextField<B?> get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JourneyInfoCopyWith<B, JourneyInfo<B>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyInfoCopyWith<B, $Res> {
  factory $JourneyInfoCopyWith(
          JourneyInfo<B> value, $Res Function(JourneyInfo<B>) then) =
      _$JourneyInfoCopyWithImpl<B, $Res>;
  $Res call({BasicTextField<String?> convert, BasicTextField<B?> value});
}

/// @nodoc
class _$JourneyInfoCopyWithImpl<B, $Res>
    implements $JourneyInfoCopyWith<B, $Res> {
  _$JourneyInfoCopyWithImpl(this._value, this._then);

  final JourneyInfo<B> _value;
  // ignore: unused_field
  final $Res Function(JourneyInfo<B>) _then;

  @override
  $Res call({
    Object? convert = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      convert: convert == freezed
          ? _value.convert
          : convert // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BasicTextField<B?>,
    ));
  }
}

/// @nodoc
abstract class _$JourneyInfoCopyWith<B, $Res>
    implements $JourneyInfoCopyWith<B, $Res> {
  factory _$JourneyInfoCopyWith(
          _JourneyInfo<B> value, $Res Function(_JourneyInfo<B>) then) =
      __$JourneyInfoCopyWithImpl<B, $Res>;
  @override
  $Res call({BasicTextField<String?> convert, BasicTextField<B?> value});
}

/// @nodoc
class __$JourneyInfoCopyWithImpl<B, $Res>
    extends _$JourneyInfoCopyWithImpl<B, $Res>
    implements _$JourneyInfoCopyWith<B, $Res> {
  __$JourneyInfoCopyWithImpl(
      _JourneyInfo<B> _value, $Res Function(_JourneyInfo<B>) _then)
      : super(_value, (v) => _then(v as _JourneyInfo<B>));

  @override
  _JourneyInfo<B> get _value => super._value as _JourneyInfo<B>;

  @override
  $Res call({
    Object? convert = freezed,
    Object? value = freezed,
  }) {
    return _then(_JourneyInfo<B>(
      convert: convert == freezed
          ? _value.convert
          : convert // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BasicTextField<B?>,
    ));
  }
}

/// @nodoc

class _$_JourneyInfo<B> extends _JourneyInfo<B> with DiagnosticableTreeMixin {
  const _$_JourneyInfo({required this.convert, required this.value})
      : super._();

  @override
  final BasicTextField<String?> convert;
  @override
  final BasicTextField<B?> value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JourneyInfo<$B>(convert: $convert, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JourneyInfo<$B>'))
      ..add(DiagnosticsProperty('convert', convert))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyInfo<B> &&
            (identical(other.convert, convert) || other.convert == convert) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, convert, value);

  @JsonKey(ignore: true)
  @override
  _$JourneyInfoCopyWith<B, _JourneyInfo<B>> get copyWith =>
      __$JourneyInfoCopyWithImpl<B, _JourneyInfo<B>>(this, _$identity);
}

abstract class _JourneyInfo<B> extends JourneyInfo<B> {
  const factory _JourneyInfo(
      {required BasicTextField<String?> convert,
      required BasicTextField<B?> value}) = _$_JourneyInfo<B>;
  const _JourneyInfo._() : super._();

  @override
  BasicTextField<String?> get convert;
  @override
  BasicTextField<B?> get value;
  @override
  @JsonKey(ignore: true)
  _$JourneyInfoCopyWith<B, _JourneyInfo<B>> get copyWith =>
      throw _privateConstructorUsedError;
}
