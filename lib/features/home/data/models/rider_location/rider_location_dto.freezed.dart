// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of rider_location_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RiderLocationDTO _$RiderLocationDTOFromJson(Map<String, dynamic> json) {
  return _RiderLocationDTO.fromJson(json);
}

/// @nodoc
class _$RiderLocationDTOTearOff {
  const _$RiderLocationDTOTearOff();

  _RiderLocationDTO call(
      {@JsonKey(includeIfNull: false, name: 'lat')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'long')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false)
          String? address,
      @JsonKey(includeIfNull: false)
          double? accuracy,
      @JsonKey(includeIfNull: false)
          double? altitude,
      @JsonKey(includeIfNull: false)
          double? speed,
      @JsonKey(includeIfNull: false)
          double? speedAccuracy}) {
    return _RiderLocationDTO(
      lat: lat,
      lng: lng,
      address: address,
      accuracy: accuracy,
      altitude: altitude,
      speed: speed,
      speedAccuracy: speedAccuracy,
    );
  }

  RiderLocationDTO fromJson(Map<String, Object?> json) {
    return RiderLocationDTO.fromJson(json);
  }
}

/// @nodoc
const $RiderLocationDTO = _$RiderLocationDTOTearOff();

/// @nodoc
mixin _$RiderLocationDTO {
  @JsonKey(includeIfNull: false, name: 'lat')
  @DoubleSerializer()
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'long')
  @DoubleSerializer()
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get accuracy => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get altitude => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get speed => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get speedAccuracy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiderLocationDTOCopyWith<RiderLocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderLocationDTOCopyWith<$Res> {
  factory $RiderLocationDTOCopyWith(
          RiderLocationDTO value, $Res Function(RiderLocationDTO) then) =
      _$RiderLocationDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false, name: 'lat')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'long')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false)
          String? address,
      @JsonKey(includeIfNull: false)
          double? accuracy,
      @JsonKey(includeIfNull: false)
          double? altitude,
      @JsonKey(includeIfNull: false)
          double? speed,
      @JsonKey(includeIfNull: false)
          double? speedAccuracy});
}

/// @nodoc
class _$RiderLocationDTOCopyWithImpl<$Res>
    implements $RiderLocationDTOCopyWith<$Res> {
  _$RiderLocationDTOCopyWithImpl(this._value, this._then);

  final RiderLocationDTO _value;
  // ignore: unused_field
  final $Res Function(RiderLocationDTO) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? accuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: altitude == freezed
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RiderLocationDTOCopyWith<$Res>
    implements $RiderLocationDTOCopyWith<$Res> {
  factory _$RiderLocationDTOCopyWith(
          _RiderLocationDTO value, $Res Function(_RiderLocationDTO) then) =
      __$RiderLocationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false, name: 'lat')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'long')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false)
          String? address,
      @JsonKey(includeIfNull: false)
          double? accuracy,
      @JsonKey(includeIfNull: false)
          double? altitude,
      @JsonKey(includeIfNull: false)
          double? speed,
      @JsonKey(includeIfNull: false)
          double? speedAccuracy});
}

/// @nodoc
class __$RiderLocationDTOCopyWithImpl<$Res>
    extends _$RiderLocationDTOCopyWithImpl<$Res>
    implements _$RiderLocationDTOCopyWith<$Res> {
  __$RiderLocationDTOCopyWithImpl(
      _RiderLocationDTO _value, $Res Function(_RiderLocationDTO) _then)
      : super(_value, (v) => _then(v as _RiderLocationDTO));

  @override
  _RiderLocationDTO get _value => super._value as _RiderLocationDTO;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? accuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
  }) {
    return _then(_RiderLocationDTO(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: altitude == freezed
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RiderLocationDTO extends _RiderLocationDTO {
  const _$_RiderLocationDTO(
      {@JsonKey(includeIfNull: false, name: 'lat') @DoubleSerializer() this.lat,
      @JsonKey(includeIfNull: false, name: 'long') @DoubleSerializer() this.lng,
      @JsonKey(includeIfNull: false) this.address,
      @JsonKey(includeIfNull: false) this.accuracy,
      @JsonKey(includeIfNull: false) this.altitude,
      @JsonKey(includeIfNull: false) this.speed,
      @JsonKey(includeIfNull: false) this.speedAccuracy})
      : super._();

  factory _$_RiderLocationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RiderLocationDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false, name: 'lat')
  @DoubleSerializer()
  final double? lat;
  @override
  @JsonKey(includeIfNull: false, name: 'long')
  @DoubleSerializer()
  final double? lng;
  @override
  @JsonKey(includeIfNull: false)
  final String? address;
  @override
  @JsonKey(includeIfNull: false)
  final double? accuracy;
  @override
  @JsonKey(includeIfNull: false)
  final double? altitude;
  @override
  @JsonKey(includeIfNull: false)
  final double? speed;
  @override
  @JsonKey(includeIfNull: false)
  final double? speedAccuracy;

  @override
  String toString() {
    return 'RiderLocationDTO(lat: $lat, lng: $lng, address: $address, accuracy: $accuracy, altitude: $altitude, speed: $speed, speedAccuracy: $speedAccuracy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RiderLocationDTO &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                other.speedAccuracy == speedAccuracy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lat, lng, address, accuracy, altitude, speed, speedAccuracy);

  @JsonKey(ignore: true)
  @override
  _$RiderLocationDTOCopyWith<_RiderLocationDTO> get copyWith =>
      __$RiderLocationDTOCopyWithImpl<_RiderLocationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RiderLocationDTOToJson(this);
  }
}

abstract class _RiderLocationDTO extends RiderLocationDTO {
  const factory _RiderLocationDTO(
      {@JsonKey(includeIfNull: false, name: 'lat')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'long')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false)
          String? address,
      @JsonKey(includeIfNull: false)
          double? accuracy,
      @JsonKey(includeIfNull: false)
          double? altitude,
      @JsonKey(includeIfNull: false)
          double? speed,
      @JsonKey(includeIfNull: false)
          double? speedAccuracy}) = _$_RiderLocationDTO;
  const _RiderLocationDTO._() : super._();

  factory _RiderLocationDTO.fromJson(Map<String, dynamic> json) =
      _$_RiderLocationDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false, name: 'lat')
  @DoubleSerializer()
  double? get lat;
  @override
  @JsonKey(includeIfNull: false, name: 'long')
  @DoubleSerializer()
  double? get lng;
  @override
  @JsonKey(includeIfNull: false)
  String? get address;
  @override
  @JsonKey(includeIfNull: false)
  double? get accuracy;
  @override
  @JsonKey(includeIfNull: false)
  double? get altitude;
  @override
  @JsonKey(includeIfNull: false)
  double? get speed;
  @override
  @JsonKey(includeIfNull: false)
  double? get speedAccuracy;
  @override
  @JsonKey(ignore: true)
  _$RiderLocationDTOCopyWith<_RiderLocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
