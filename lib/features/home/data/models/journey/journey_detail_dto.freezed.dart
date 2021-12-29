// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of journey_detail_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JourneyDetailDTO _$JourneyDetailDTOFromJson(Map<String, dynamic> json) {
  return _JourneyDetailDTO.fromJson(json);
}

/// @nodoc
class _$JourneyDetailDTOTearOff {
  const _$JourneyDetailDTOTearOff();

  _JourneyDetailDTO call(
      {JourneyInfoDTO<int?>? distance,
      JourneyInfoDTO<int?>? duration,
      @PlaceStatusSerializer() required PlaceStatus status}) {
    return _JourneyDetailDTO(
      distance: distance,
      duration: duration,
      status: status,
    );
  }

  JourneyDetailDTO fromJson(Map<String, Object?> json) {
    return JourneyDetailDTO.fromJson(json);
  }
}

/// @nodoc
const $JourneyDetailDTO = _$JourneyDetailDTOTearOff();

/// @nodoc
mixin _$JourneyDetailDTO {
  JourneyInfoDTO<int?>? get distance => throw _privateConstructorUsedError;
  JourneyInfoDTO<int?>? get duration => throw _privateConstructorUsedError;
  @PlaceStatusSerializer()
  PlaceStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JourneyDetailDTOCopyWith<JourneyDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyDetailDTOCopyWith<$Res> {
  factory $JourneyDetailDTOCopyWith(
          JourneyDetailDTO value, $Res Function(JourneyDetailDTO) then) =
      _$JourneyDetailDTOCopyWithImpl<$Res>;
  $Res call(
      {JourneyInfoDTO<int?>? distance,
      JourneyInfoDTO<int?>? duration,
      @PlaceStatusSerializer() PlaceStatus status});

  $JourneyInfoDTOCopyWith<int?, $Res>? get distance;
  $JourneyInfoDTOCopyWith<int?, $Res>? get duration;
}

/// @nodoc
class _$JourneyDetailDTOCopyWithImpl<$Res>
    implements $JourneyDetailDTOCopyWith<$Res> {
  _$JourneyDetailDTOCopyWithImpl(this._value, this._then);

  final JourneyDetailDTO _value;
  // ignore: unused_field
  final $Res Function(JourneyDetailDTO) _then;

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
              as JourneyInfoDTO<int?>?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as JourneyInfoDTO<int?>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }

  @override
  $JourneyInfoDTOCopyWith<int?, $Res>? get distance {
    if (_value.distance == null) {
      return null;
    }

    return $JourneyInfoDTOCopyWith<int?, $Res>(_value.distance!, (value) {
      return _then(_value.copyWith(distance: value));
    });
  }

  @override
  $JourneyInfoDTOCopyWith<int?, $Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $JourneyInfoDTOCopyWith<int?, $Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value));
    });
  }
}

/// @nodoc
abstract class _$JourneyDetailDTOCopyWith<$Res>
    implements $JourneyDetailDTOCopyWith<$Res> {
  factory _$JourneyDetailDTOCopyWith(
          _JourneyDetailDTO value, $Res Function(_JourneyDetailDTO) then) =
      __$JourneyDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {JourneyInfoDTO<int?>? distance,
      JourneyInfoDTO<int?>? duration,
      @PlaceStatusSerializer() PlaceStatus status});

  @override
  $JourneyInfoDTOCopyWith<int?, $Res>? get distance;
  @override
  $JourneyInfoDTOCopyWith<int?, $Res>? get duration;
}

/// @nodoc
class __$JourneyDetailDTOCopyWithImpl<$Res>
    extends _$JourneyDetailDTOCopyWithImpl<$Res>
    implements _$JourneyDetailDTOCopyWith<$Res> {
  __$JourneyDetailDTOCopyWithImpl(
      _JourneyDetailDTO _value, $Res Function(_JourneyDetailDTO) _then)
      : super(_value, (v) => _then(v as _JourneyDetailDTO));

  @override
  _JourneyDetailDTO get _value => super._value as _JourneyDetailDTO;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? status = freezed,
  }) {
    return _then(_JourneyDetailDTO(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as JourneyInfoDTO<int?>?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as JourneyInfoDTO<int?>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JourneyDetailDTO extends _JourneyDetailDTO {
  const _$_JourneyDetailDTO(
      {this.distance,
      this.duration,
      @PlaceStatusSerializer() required this.status})
      : super._();

  factory _$_JourneyDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_JourneyDetailDTOFromJson(json);

  @override
  final JourneyInfoDTO<int?>? distance;
  @override
  final JourneyInfoDTO<int?>? duration;
  @override
  @PlaceStatusSerializer()
  final PlaceStatus status;

  @override
  String toString() {
    return 'JourneyDetailDTO(distance: $distance, duration: $duration, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyDetailDTO &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$JourneyDetailDTOCopyWith<_JourneyDetailDTO> get copyWith =>
      __$JourneyDetailDTOCopyWithImpl<_JourneyDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JourneyDetailDTOToJson(this);
  }
}

abstract class _JourneyDetailDTO extends JourneyDetailDTO {
  const factory _JourneyDetailDTO(
          {JourneyInfoDTO<int?>? distance,
          JourneyInfoDTO<int?>? duration,
          @PlaceStatusSerializer() required PlaceStatus status}) =
      _$_JourneyDetailDTO;
  const _JourneyDetailDTO._() : super._();

  factory _JourneyDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_JourneyDetailDTO.fromJson;

  @override
  JourneyInfoDTO<int?>? get distance;
  @override
  JourneyInfoDTO<int?>? get duration;
  @override
  @PlaceStatusSerializer()
  PlaceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$JourneyDetailDTOCopyWith<_JourneyDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

JourneyInfoDTO<B> _$JourneyInfoDTOFromJson<B>(Map<String, dynamic> json) {
  return _JourneyInfoDTO<B>.fromJson(json);
}

/// @nodoc
class _$JourneyInfoDTOTearOff {
  const _$JourneyInfoDTOTearOff();

  _JourneyInfoDTO<B> call<B>(
      {String? text, @JourneyInfoValueSerializer() B? value}) {
    return _JourneyInfoDTO<B>(
      text: text,
      value: value,
    );
  }

  JourneyInfoDTO<B> fromJson<B>(Map<String, Object?> json) {
    return JourneyInfoDTO<B>.fromJson(json);
  }
}

/// @nodoc
const $JourneyInfoDTO = _$JourneyInfoDTOTearOff();

/// @nodoc
mixin _$JourneyInfoDTO<B> {
  String? get text => throw _privateConstructorUsedError;
  @JourneyInfoValueSerializer()
  B? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JourneyInfoDTOCopyWith<B, JourneyInfoDTO<B>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneyInfoDTOCopyWith<B, $Res> {
  factory $JourneyInfoDTOCopyWith(
          JourneyInfoDTO<B> value, $Res Function(JourneyInfoDTO<B>) then) =
      _$JourneyInfoDTOCopyWithImpl<B, $Res>;
  $Res call({String? text, @JourneyInfoValueSerializer() B? value});
}

/// @nodoc
class _$JourneyInfoDTOCopyWithImpl<B, $Res>
    implements $JourneyInfoDTOCopyWith<B, $Res> {
  _$JourneyInfoDTOCopyWithImpl(this._value, this._then);

  final JourneyInfoDTO<B> _value;
  // ignore: unused_field
  final $Res Function(JourneyInfoDTO<B>) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as B?,
    ));
  }
}

/// @nodoc
abstract class _$JourneyInfoDTOCopyWith<B, $Res>
    implements $JourneyInfoDTOCopyWith<B, $Res> {
  factory _$JourneyInfoDTOCopyWith(
          _JourneyInfoDTO<B> value, $Res Function(_JourneyInfoDTO<B>) then) =
      __$JourneyInfoDTOCopyWithImpl<B, $Res>;
  @override
  $Res call({String? text, @JourneyInfoValueSerializer() B? value});
}

/// @nodoc
class __$JourneyInfoDTOCopyWithImpl<B, $Res>
    extends _$JourneyInfoDTOCopyWithImpl<B, $Res>
    implements _$JourneyInfoDTOCopyWith<B, $Res> {
  __$JourneyInfoDTOCopyWithImpl(
      _JourneyInfoDTO<B> _value, $Res Function(_JourneyInfoDTO<B>) _then)
      : super(_value, (v) => _then(v as _JourneyInfoDTO<B>));

  @override
  _JourneyInfoDTO<B> get _value => super._value as _JourneyInfoDTO<B>;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_JourneyInfoDTO<B>(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as B?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JourneyInfoDTO<B> extends _JourneyInfoDTO<B> {
  const _$_JourneyInfoDTO({this.text, @JourneyInfoValueSerializer() this.value})
      : super._();

  factory _$_JourneyInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_JourneyInfoDTOFromJson(json);

  @override
  final String? text;
  @override
  @JourneyInfoValueSerializer()
  final B? value;

  @override
  String toString() {
    return 'JourneyInfoDTO<$B>(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JourneyInfoDTO<B> &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$JourneyInfoDTOCopyWith<B, _JourneyInfoDTO<B>> get copyWith =>
      __$JourneyInfoDTOCopyWithImpl<B, _JourneyInfoDTO<B>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JourneyInfoDTOToJson(this);
  }
}

abstract class _JourneyInfoDTO<B> extends JourneyInfoDTO<B> {
  const factory _JourneyInfoDTO(
      {String? text,
      @JourneyInfoValueSerializer() B? value}) = _$_JourneyInfoDTO<B>;
  const _JourneyInfoDTO._() : super._();

  factory _JourneyInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_JourneyInfoDTO<B>.fromJson;

  @override
  String? get text;
  @override
  @JourneyInfoValueSerializer()
  B? get value;
  @override
  @JsonKey(ignore: true)
  _$JourneyInfoDTOCopyWith<B, _JourneyInfoDTO<B>> get copyWith =>
      throw _privateConstructorUsedError;
}
