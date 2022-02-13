// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceOpeningHoursTearOff {
  const _$PlaceOpeningHoursTearOff();

  _PlaceOpeningHours call(
      {bool? openNow,
      KtList<PlaceOpeningPeriod> periods = const KtList.empty(),
      KtList<BasicTextField<String?>?> weekdayText = const KtList.empty()}) {
    return _PlaceOpeningHours(
      openNow: openNow,
      periods: periods,
      weekdayText: weekdayText,
    );
  }
}

/// @nodoc
const $PlaceOpeningHours = _$PlaceOpeningHoursTearOff();

/// @nodoc
mixin _$PlaceOpeningHours {
  bool? get openNow => throw _privateConstructorUsedError;
  KtList<PlaceOpeningPeriod> get periods => throw _privateConstructorUsedError;
  KtList<BasicTextField<String?>?> get weekdayText =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOpeningHoursCopyWith<PlaceOpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOpeningHoursCopyWith<$Res> {
  factory $PlaceOpeningHoursCopyWith(
          PlaceOpeningHours value, $Res Function(PlaceOpeningHours) then) =
      _$PlaceOpeningHoursCopyWithImpl<$Res>;
  $Res call(
      {bool? openNow,
      KtList<PlaceOpeningPeriod> periods,
      KtList<BasicTextField<String?>?> weekdayText});
}

/// @nodoc
class _$PlaceOpeningHoursCopyWithImpl<$Res>
    implements $PlaceOpeningHoursCopyWith<$Res> {
  _$PlaceOpeningHoursCopyWithImpl(this._value, this._then);

  final PlaceOpeningHours _value;
  // ignore: unused_field
  final $Res Function(PlaceOpeningHours) _then;

  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_value.copyWith(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: periods == freezed
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as KtList<PlaceOpeningPeriod>,
      weekdayText: weekdayText == freezed
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as KtList<BasicTextField<String?>?>,
    ));
  }
}

/// @nodoc
abstract class _$PlaceOpeningHoursCopyWith<$Res>
    implements $PlaceOpeningHoursCopyWith<$Res> {
  factory _$PlaceOpeningHoursCopyWith(
          _PlaceOpeningHours value, $Res Function(_PlaceOpeningHours) then) =
      __$PlaceOpeningHoursCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? openNow,
      KtList<PlaceOpeningPeriod> periods,
      KtList<BasicTextField<String?>?> weekdayText});
}

/// @nodoc
class __$PlaceOpeningHoursCopyWithImpl<$Res>
    extends _$PlaceOpeningHoursCopyWithImpl<$Res>
    implements _$PlaceOpeningHoursCopyWith<$Res> {
  __$PlaceOpeningHoursCopyWithImpl(
      _PlaceOpeningHours _value, $Res Function(_PlaceOpeningHours) _then)
      : super(_value, (v) => _then(v as _PlaceOpeningHours));

  @override
  _PlaceOpeningHours get _value => super._value as _PlaceOpeningHours;

  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_PlaceOpeningHours(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: periods == freezed
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as KtList<PlaceOpeningPeriod>,
      weekdayText: weekdayText == freezed
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as KtList<BasicTextField<String?>?>,
    ));
  }
}

/// @nodoc

class _$_PlaceOpeningHours
    with DiagnosticableTreeMixin
    implements _PlaceOpeningHours {
  const _$_PlaceOpeningHours(
      {this.openNow,
      this.periods = const KtList.empty(),
      this.weekdayText = const KtList.empty()});

  @override
  final bool? openNow;
  @JsonKey()
  @override
  final KtList<PlaceOpeningPeriod> periods;
  @JsonKey()
  @override
  final KtList<BasicTextField<String?>?> weekdayText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOpeningHours(openNow: $openNow, periods: $periods, weekdayText: $weekdayText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOpeningHours'))
      ..add(DiagnosticsProperty('openNow', openNow))
      ..add(DiagnosticsProperty('periods', periods))
      ..add(DiagnosticsProperty('weekdayText', weekdayText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceOpeningHours &&
            const DeepCollectionEquality().equals(other.openNow, openNow) &&
            const DeepCollectionEquality().equals(other.periods, periods) &&
            const DeepCollectionEquality()
                .equals(other.weekdayText, weekdayText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(openNow),
      const DeepCollectionEquality().hash(periods),
      const DeepCollectionEquality().hash(weekdayText));

  @JsonKey(ignore: true)
  @override
  _$PlaceOpeningHoursCopyWith<_PlaceOpeningHours> get copyWith =>
      __$PlaceOpeningHoursCopyWithImpl<_PlaceOpeningHours>(this, _$identity);
}

abstract class _PlaceOpeningHours implements PlaceOpeningHours {
  const factory _PlaceOpeningHours(
      {bool? openNow,
      KtList<PlaceOpeningPeriod> periods,
      KtList<BasicTextField<String?>?> weekdayText}) = _$_PlaceOpeningHours;

  @override
  bool? get openNow;
  @override
  KtList<PlaceOpeningPeriod> get periods;
  @override
  KtList<BasicTextField<String?>?> get weekdayText;
  @override
  @JsonKey(ignore: true)
  _$PlaceOpeningHoursCopyWith<_PlaceOpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaceOpeningPeriodTearOff {
  const _$PlaceOpeningPeriodTearOff();

  _PlaceOpeningPeriod call({PlaceHours? close, PlaceHours? open}) {
    return _PlaceOpeningPeriod(
      close: close,
      open: open,
    );
  }
}

/// @nodoc
const $PlaceOpeningPeriod = _$PlaceOpeningPeriodTearOff();

/// @nodoc
mixin _$PlaceOpeningPeriod {
  PlaceHours? get close => throw _privateConstructorUsedError;
  PlaceHours? get open => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOpeningPeriodCopyWith<PlaceOpeningPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOpeningPeriodCopyWith<$Res> {
  factory $PlaceOpeningPeriodCopyWith(
          PlaceOpeningPeriod value, $Res Function(PlaceOpeningPeriod) then) =
      _$PlaceOpeningPeriodCopyWithImpl<$Res>;
  $Res call({PlaceHours? close, PlaceHours? open});

  $PlaceHoursCopyWith<$Res>? get close;
  $PlaceHoursCopyWith<$Res>? get open;
}

/// @nodoc
class _$PlaceOpeningPeriodCopyWithImpl<$Res>
    implements $PlaceOpeningPeriodCopyWith<$Res> {
  _$PlaceOpeningPeriodCopyWithImpl(this._value, this._then);

  final PlaceOpeningPeriod _value;
  // ignore: unused_field
  final $Res Function(PlaceOpeningPeriod) _then;

  @override
  $Res call({
    Object? close = freezed,
    Object? open = freezed,
  }) {
    return _then(_value.copyWith(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
    ));
  }

  @override
  $PlaceHoursCopyWith<$Res>? get close {
    if (_value.close == null) {
      return null;
    }

    return $PlaceHoursCopyWith<$Res>(_value.close!, (value) {
      return _then(_value.copyWith(close: value));
    });
  }

  @override
  $PlaceHoursCopyWith<$Res>? get open {
    if (_value.open == null) {
      return null;
    }

    return $PlaceHoursCopyWith<$Res>(_value.open!, (value) {
      return _then(_value.copyWith(open: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceOpeningPeriodCopyWith<$Res>
    implements $PlaceOpeningPeriodCopyWith<$Res> {
  factory _$PlaceOpeningPeriodCopyWith(
          _PlaceOpeningPeriod value, $Res Function(_PlaceOpeningPeriod) then) =
      __$PlaceOpeningPeriodCopyWithImpl<$Res>;
  @override
  $Res call({PlaceHours? close, PlaceHours? open});

  @override
  $PlaceHoursCopyWith<$Res>? get close;
  @override
  $PlaceHoursCopyWith<$Res>? get open;
}

/// @nodoc
class __$PlaceOpeningPeriodCopyWithImpl<$Res>
    extends _$PlaceOpeningPeriodCopyWithImpl<$Res>
    implements _$PlaceOpeningPeriodCopyWith<$Res> {
  __$PlaceOpeningPeriodCopyWithImpl(
      _PlaceOpeningPeriod _value, $Res Function(_PlaceOpeningPeriod) _then)
      : super(_value, (v) => _then(v as _PlaceOpeningPeriod));

  @override
  _PlaceOpeningPeriod get _value => super._value as _PlaceOpeningPeriod;

  @override
  $Res call({
    Object? close = freezed,
    Object? open = freezed,
  }) {
    return _then(_PlaceOpeningPeriod(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
    ));
  }
}

/// @nodoc

class _$_PlaceOpeningPeriod
    with DiagnosticableTreeMixin
    implements _PlaceOpeningPeriod {
  const _$_PlaceOpeningPeriod({this.close, this.open});

  @override
  final PlaceHours? close;
  @override
  final PlaceHours? open;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOpeningPeriod(close: $close, open: $open)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOpeningPeriod'))
      ..add(DiagnosticsProperty('close', close))
      ..add(DiagnosticsProperty('open', open));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceOpeningPeriod &&
            const DeepCollectionEquality().equals(other.close, close) &&
            const DeepCollectionEquality().equals(other.open, open));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(close),
      const DeepCollectionEquality().hash(open));

  @JsonKey(ignore: true)
  @override
  _$PlaceOpeningPeriodCopyWith<_PlaceOpeningPeriod> get copyWith =>
      __$PlaceOpeningPeriodCopyWithImpl<_PlaceOpeningPeriod>(this, _$identity);
}

abstract class _PlaceOpeningPeriod implements PlaceOpeningPeriod {
  const factory _PlaceOpeningPeriod({PlaceHours? close, PlaceHours? open}) =
      _$_PlaceOpeningPeriod;

  @override
  PlaceHours? get close;
  @override
  PlaceHours? get open;
  @override
  @JsonKey(ignore: true)
  _$PlaceOpeningPeriodCopyWith<_PlaceOpeningPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlaceHoursTearOff {
  const _$PlaceHoursTearOff();

  _PlaceHours call({BasicTextField<int?>? day, BasicTextField<String?>? time}) {
    return _PlaceHours(
      day: day,
      time: time,
    );
  }
}

/// @nodoc
const $PlaceHours = _$PlaceHoursTearOff();

/// @nodoc
mixin _$PlaceHours {
  BasicTextField<int?>? get day => throw _privateConstructorUsedError;
  BasicTextField<String?>? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceHoursCopyWith<PlaceHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceHoursCopyWith<$Res> {
  factory $PlaceHoursCopyWith(
          PlaceHours value, $Res Function(PlaceHours) then) =
      _$PlaceHoursCopyWithImpl<$Res>;
  $Res call({BasicTextField<int?>? day, BasicTextField<String?>? time});
}

/// @nodoc
class _$PlaceHoursCopyWithImpl<$Res> implements $PlaceHoursCopyWith<$Res> {
  _$PlaceHoursCopyWithImpl(this._value, this._then);

  final PlaceHours _value;
  // ignore: unused_field
  final $Res Function(PlaceHours) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$PlaceHoursCopyWith<$Res> implements $PlaceHoursCopyWith<$Res> {
  factory _$PlaceHoursCopyWith(
          _PlaceHours value, $Res Function(_PlaceHours) then) =
      __$PlaceHoursCopyWithImpl<$Res>;
  @override
  $Res call({BasicTextField<int?>? day, BasicTextField<String?>? time});
}

/// @nodoc
class __$PlaceHoursCopyWithImpl<$Res> extends _$PlaceHoursCopyWithImpl<$Res>
    implements _$PlaceHoursCopyWith<$Res> {
  __$PlaceHoursCopyWithImpl(
      _PlaceHours _value, $Res Function(_PlaceHours) _then)
      : super(_value, (v) => _then(v as _PlaceHours));

  @override
  _PlaceHours get _value => super._value as _PlaceHours;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
  }) {
    return _then(_PlaceHours(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>?,
    ));
  }
}

/// @nodoc

class _$_PlaceHours with DiagnosticableTreeMixin implements _PlaceHours {
  const _$_PlaceHours({this.day, this.time});

  @override
  final BasicTextField<int?>? day;
  @override
  final BasicTextField<String?>? time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHours(day: $day, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHours'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceHours &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$PlaceHoursCopyWith<_PlaceHours> get copyWith =>
      __$PlaceHoursCopyWithImpl<_PlaceHours>(this, _$identity);
}

abstract class _PlaceHours implements PlaceHours {
  const factory _PlaceHours(
      {BasicTextField<int?>? day,
      BasicTextField<String?>? time}) = _$_PlaceHours;

  @override
  BasicTextField<int?>? get day;
  @override
  BasicTextField<String?>? get time;
  @override
  @JsonKey(ignore: true)
  _$PlaceHoursCopyWith<_PlaceHours> get copyWith =>
      throw _privateConstructorUsedError;
}
