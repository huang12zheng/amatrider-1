// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'opening_hours_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHoursDTO _$OpeningHoursDTOFromJson(Map<String, dynamic> json) {
  return _OpeningHoursDTO.fromJson(json);
}

/// @nodoc
class _$OpeningHoursDTOTearOff {
  const _$OpeningHoursDTOTearOff();

  _OpeningHoursDTO call(
      {@JsonKey(name: 'open_now')
          bool? openNow,
      @JsonKey(defaultValue: [])
          List<PeriodDTO> periods = const [],
      @JsonKey(name: 'weekday_text', defaultValue: [])
      @JsonKey(defaultValue: [])
          List<String?> weekdayText = const []}) {
    return _OpeningHoursDTO(
      openNow: openNow,
      periods: periods,
      weekdayText: weekdayText,
    );
  }

  OpeningHoursDTO fromJson(Map<String, Object?> json) {
    return OpeningHoursDTO.fromJson(json);
  }
}

/// @nodoc
const $OpeningHoursDTO = _$OpeningHoursDTOTearOff();

/// @nodoc
mixin _$OpeningHoursDTO {
  @JsonKey(name: 'open_now')
  bool? get openNow => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<PeriodDTO> get periods => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekday_text', defaultValue: [])
  @JsonKey(defaultValue: [])
  List<String?> get weekdayText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursDTOCopyWith<OpeningHoursDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursDTOCopyWith<$Res> {
  factory $OpeningHoursDTOCopyWith(
          OpeningHoursDTO value, $Res Function(OpeningHoursDTO) then) =
      _$OpeningHoursDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'open_now')
          bool? openNow,
      @JsonKey(defaultValue: [])
          List<PeriodDTO> periods,
      @JsonKey(name: 'weekday_text', defaultValue: [])
      @JsonKey(defaultValue: [])
          List<String?> weekdayText});
}

/// @nodoc
class _$OpeningHoursDTOCopyWithImpl<$Res>
    implements $OpeningHoursDTOCopyWith<$Res> {
  _$OpeningHoursDTOCopyWithImpl(this._value, this._then);

  final OpeningHoursDTO _value;
  // ignore: unused_field
  final $Res Function(OpeningHoursDTO) _then;

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
              as List<PeriodDTO>,
      weekdayText: weekdayText == freezed
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
abstract class _$OpeningHoursDTOCopyWith<$Res>
    implements $OpeningHoursDTOCopyWith<$Res> {
  factory _$OpeningHoursDTOCopyWith(
          _OpeningHoursDTO value, $Res Function(_OpeningHoursDTO) then) =
      __$OpeningHoursDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'open_now')
          bool? openNow,
      @JsonKey(defaultValue: [])
          List<PeriodDTO> periods,
      @JsonKey(name: 'weekday_text', defaultValue: [])
      @JsonKey(defaultValue: [])
          List<String?> weekdayText});
}

/// @nodoc
class __$OpeningHoursDTOCopyWithImpl<$Res>
    extends _$OpeningHoursDTOCopyWithImpl<$Res>
    implements _$OpeningHoursDTOCopyWith<$Res> {
  __$OpeningHoursDTOCopyWithImpl(
      _OpeningHoursDTO _value, $Res Function(_OpeningHoursDTO) _then)
      : super(_value, (v) => _then(v as _OpeningHoursDTO));

  @override
  _OpeningHoursDTO get _value => super._value as _OpeningHoursDTO;

  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_OpeningHoursDTO(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: periods == freezed
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<PeriodDTO>,
      weekdayText: weekdayText == freezed
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHoursDTO extends _OpeningHoursDTO with DiagnosticableTreeMixin {
  const _$_OpeningHoursDTO(
      {@JsonKey(name: 'open_now')
          this.openNow,
      @JsonKey(defaultValue: [])
          this.periods = const [],
      @JsonKey(name: 'weekday_text', defaultValue: [])
      @JsonKey(defaultValue: [])
          this.weekdayText = const []})
      : super._();

  factory _$_OpeningHoursDTO.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningHoursDTOFromJson(json);

  @override
  @JsonKey(name: 'open_now')
  final bool? openNow;
  @override
  @JsonKey(defaultValue: [])
  final List<PeriodDTO> periods;
  @override
  @JsonKey(name: 'weekday_text', defaultValue: [])
  @JsonKey(defaultValue: [])
  final List<String?> weekdayText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpeningHoursDTO(openNow: $openNow, periods: $periods, weekdayText: $weekdayText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpeningHoursDTO'))
      ..add(DiagnosticsProperty('openNow', openNow))
      ..add(DiagnosticsProperty('periods', periods))
      ..add(DiagnosticsProperty('weekdayText', weekdayText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpeningHoursDTO &&
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
  _$OpeningHoursDTOCopyWith<_OpeningHoursDTO> get copyWith =>
      __$OpeningHoursDTOCopyWithImpl<_OpeningHoursDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursDTOToJson(this);
  }
}

abstract class _OpeningHoursDTO extends OpeningHoursDTO {
  const factory _OpeningHoursDTO(
      {@JsonKey(name: 'open_now')
          bool? openNow,
      @JsonKey(defaultValue: [])
          List<PeriodDTO> periods,
      @JsonKey(name: 'weekday_text', defaultValue: [])
      @JsonKey(defaultValue: [])
          List<String?> weekdayText}) = _$_OpeningHoursDTO;
  const _OpeningHoursDTO._() : super._();

  factory _OpeningHoursDTO.fromJson(Map<String, dynamic> json) =
      _$_OpeningHoursDTO.fromJson;

  @override
  @JsonKey(name: 'open_now')
  bool? get openNow;
  @override
  @JsonKey(defaultValue: [])
  List<PeriodDTO> get periods;
  @override
  @JsonKey(name: 'weekday_text', defaultValue: [])
  @JsonKey(defaultValue: [])
  List<String?> get weekdayText;
  @override
  @JsonKey(ignore: true)
  _$OpeningHoursDTOCopyWith<_OpeningHoursDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PeriodDTO _$PeriodDTOFromJson(Map<String, dynamic> json) {
  return _PeriodDTO.fromJson(json);
}

/// @nodoc
class _$PeriodDTOTearOff {
  const _$PeriodDTOTearOff();

  _PeriodDTO call({HoursDTO? close, HoursDTO? open}) {
    return _PeriodDTO(
      close: close,
      open: open,
    );
  }

  PeriodDTO fromJson(Map<String, Object?> json) {
    return PeriodDTO.fromJson(json);
  }
}

/// @nodoc
const $PeriodDTO = _$PeriodDTOTearOff();

/// @nodoc
mixin _$PeriodDTO {
  HoursDTO? get close => throw _privateConstructorUsedError;
  HoursDTO? get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodDTOCopyWith<PeriodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodDTOCopyWith<$Res> {
  factory $PeriodDTOCopyWith(PeriodDTO value, $Res Function(PeriodDTO) then) =
      _$PeriodDTOCopyWithImpl<$Res>;
  $Res call({HoursDTO? close, HoursDTO? open});

  $HoursDTOCopyWith<$Res>? get close;
  $HoursDTOCopyWith<$Res>? get open;
}

/// @nodoc
class _$PeriodDTOCopyWithImpl<$Res> implements $PeriodDTOCopyWith<$Res> {
  _$PeriodDTOCopyWithImpl(this._value, this._then);

  final PeriodDTO _value;
  // ignore: unused_field
  final $Res Function(PeriodDTO) _then;

  @override
  $Res call({
    Object? close = freezed,
    Object? open = freezed,
  }) {
    return _then(_value.copyWith(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as HoursDTO?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as HoursDTO?,
    ));
  }

  @override
  $HoursDTOCopyWith<$Res>? get close {
    if (_value.close == null) {
      return null;
    }

    return $HoursDTOCopyWith<$Res>(_value.close!, (value) {
      return _then(_value.copyWith(close: value));
    });
  }

  @override
  $HoursDTOCopyWith<$Res>? get open {
    if (_value.open == null) {
      return null;
    }

    return $HoursDTOCopyWith<$Res>(_value.open!, (value) {
      return _then(_value.copyWith(open: value));
    });
  }
}

/// @nodoc
abstract class _$PeriodDTOCopyWith<$Res> implements $PeriodDTOCopyWith<$Res> {
  factory _$PeriodDTOCopyWith(
          _PeriodDTO value, $Res Function(_PeriodDTO) then) =
      __$PeriodDTOCopyWithImpl<$Res>;
  @override
  $Res call({HoursDTO? close, HoursDTO? open});

  @override
  $HoursDTOCopyWith<$Res>? get close;
  @override
  $HoursDTOCopyWith<$Res>? get open;
}

/// @nodoc
class __$PeriodDTOCopyWithImpl<$Res> extends _$PeriodDTOCopyWithImpl<$Res>
    implements _$PeriodDTOCopyWith<$Res> {
  __$PeriodDTOCopyWithImpl(_PeriodDTO _value, $Res Function(_PeriodDTO) _then)
      : super(_value, (v) => _then(v as _PeriodDTO));

  @override
  _PeriodDTO get _value => super._value as _PeriodDTO;

  @override
  $Res call({
    Object? close = freezed,
    Object? open = freezed,
  }) {
    return _then(_PeriodDTO(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as HoursDTO?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as HoursDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeriodDTO with DiagnosticableTreeMixin implements _PeriodDTO {
  const _$_PeriodDTO({this.close, this.open});

  factory _$_PeriodDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodDTOFromJson(json);

  @override
  final HoursDTO? close;
  @override
  final HoursDTO? open;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PeriodDTO(close: $close, open: $open)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PeriodDTO'))
      ..add(DiagnosticsProperty('close', close))
      ..add(DiagnosticsProperty('open', open));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PeriodDTO &&
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
  _$PeriodDTOCopyWith<_PeriodDTO> get copyWith =>
      __$PeriodDTOCopyWithImpl<_PeriodDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodDTOToJson(this);
  }
}

abstract class _PeriodDTO implements PeriodDTO {
  const factory _PeriodDTO({HoursDTO? close, HoursDTO? open}) = _$_PeriodDTO;

  factory _PeriodDTO.fromJson(Map<String, dynamic> json) =
      _$_PeriodDTO.fromJson;

  @override
  HoursDTO? get close;
  @override
  HoursDTO? get open;
  @override
  @JsonKey(ignore: true)
  _$PeriodDTOCopyWith<_PeriodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

HoursDTO _$HoursDTOFromJson(Map<String, dynamic> json) {
  return _HoursDTO.fromJson(json);
}

/// @nodoc
class _$HoursDTOTearOff {
  const _$HoursDTOTearOff();

  _HoursDTO call({int? day, String? time}) {
    return _HoursDTO(
      day: day,
      time: time,
    );
  }

  HoursDTO fromJson(Map<String, Object?> json) {
    return HoursDTO.fromJson(json);
  }
}

/// @nodoc
const $HoursDTO = _$HoursDTOTearOff();

/// @nodoc
mixin _$HoursDTO {
  int? get day => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoursDTOCopyWith<HoursDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoursDTOCopyWith<$Res> {
  factory $HoursDTOCopyWith(HoursDTO value, $Res Function(HoursDTO) then) =
      _$HoursDTOCopyWithImpl<$Res>;
  $Res call({int? day, String? time});
}

/// @nodoc
class _$HoursDTOCopyWithImpl<$Res> implements $HoursDTOCopyWith<$Res> {
  _$HoursDTOCopyWithImpl(this._value, this._then);

  final HoursDTO _value;
  // ignore: unused_field
  final $Res Function(HoursDTO) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HoursDTOCopyWith<$Res> implements $HoursDTOCopyWith<$Res> {
  factory _$HoursDTOCopyWith(_HoursDTO value, $Res Function(_HoursDTO) then) =
      __$HoursDTOCopyWithImpl<$Res>;
  @override
  $Res call({int? day, String? time});
}

/// @nodoc
class __$HoursDTOCopyWithImpl<$Res> extends _$HoursDTOCopyWithImpl<$Res>
    implements _$HoursDTOCopyWith<$Res> {
  __$HoursDTOCopyWithImpl(_HoursDTO _value, $Res Function(_HoursDTO) _then)
      : super(_value, (v) => _then(v as _HoursDTO));

  @override
  _HoursDTO get _value => super._value as _HoursDTO;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
  }) {
    return _then(_HoursDTO(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HoursDTO with DiagnosticableTreeMixin implements _HoursDTO {
  const _$_HoursDTO({this.day, this.time});

  factory _$_HoursDTO.fromJson(Map<String, dynamic> json) =>
      _$$_HoursDTOFromJson(json);

  @override
  final int? day;
  @override
  final String? time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HoursDTO(day: $day, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HoursDTO'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HoursDTO &&
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
  _$HoursDTOCopyWith<_HoursDTO> get copyWith =>
      __$HoursDTOCopyWithImpl<_HoursDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HoursDTOToJson(this);
  }
}

abstract class _HoursDTO implements HoursDTO {
  const factory _HoursDTO({int? day, String? time}) = _$_HoursDTO;

  factory _HoursDTO.fromJson(Map<String, dynamic> json) = _$_HoursDTO.fromJson;

  @override
  int? get day;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$HoursDTOCopyWith<_HoursDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
