// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of store_location_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreLocationDTO _$StoreLocationDTOFromJson(Map<String, dynamic> json) {
  return _StoreLocationDTO.fromJson(json);
}

/// @nodoc
class _$StoreLocationDTOTearOff {
  const _$StoreLocationDTOTearOff();

  _StoreLocationDTO call(
      {String? id,
      String? restaurantId,
      @DoubleSerializer() double? lat,
      @JsonKey(name: 'long') @DoubleSerializer() double? lng,
      String? address,
      String? city,
      String? state,
      String? country,
      String? street,
      @StringSerializer() String? zip,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) {
    return _StoreLocationDTO(
      id: id,
      restaurantId: restaurantId,
      lat: lat,
      lng: lng,
      address: address,
      city: city,
      state: state,
      country: country,
      street: street,
      zip: zip,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  StoreLocationDTO fromJson(Map<String, Object?> json) {
    return StoreLocationDTO.fromJson(json);
  }
}

/// @nodoc
const $StoreLocationDTO = _$StoreLocationDTOTearOff();

/// @nodoc
mixin _$StoreLocationDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get restaurantId => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'long')
  @DoubleSerializer()
  double? get lng => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  @StringSerializer()
  String? get zip => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreLocationDTOCopyWith<StoreLocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreLocationDTOCopyWith<$Res> {
  factory $StoreLocationDTOCopyWith(
          StoreLocationDTO value, $Res Function(StoreLocationDTO) then) =
      _$StoreLocationDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? restaurantId,
      @DoubleSerializer() double? lat,
      @JsonKey(name: 'long') @DoubleSerializer() double? lng,
      String? address,
      String? city,
      String? state,
      String? country,
      String? street,
      @StringSerializer() String? zip,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class _$StoreLocationDTOCopyWithImpl<$Res>
    implements $StoreLocationDTOCopyWith<$Res> {
  _$StoreLocationDTOCopyWithImpl(this._value, this._then);

  final StoreLocationDTO _value;
  // ignore: unused_field
  final $Res Function(StoreLocationDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? restaurantId = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? street = freezed,
    Object? zip = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$StoreLocationDTOCopyWith<$Res>
    implements $StoreLocationDTOCopyWith<$Res> {
  factory _$StoreLocationDTOCopyWith(
          _StoreLocationDTO value, $Res Function(_StoreLocationDTO) then) =
      __$StoreLocationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? restaurantId,
      @DoubleSerializer() double? lat,
      @JsonKey(name: 'long') @DoubleSerializer() double? lng,
      String? address,
      String? city,
      String? state,
      String? country,
      String? street,
      @StringSerializer() String? zip,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});
}

/// @nodoc
class __$StoreLocationDTOCopyWithImpl<$Res>
    extends _$StoreLocationDTOCopyWithImpl<$Res>
    implements _$StoreLocationDTOCopyWith<$Res> {
  __$StoreLocationDTOCopyWithImpl(
      _StoreLocationDTO _value, $Res Function(_StoreLocationDTO) _then)
      : super(_value, (v) => _then(v as _StoreLocationDTO));

  @override
  _StoreLocationDTO get _value => super._value as _StoreLocationDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? restaurantId = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? street = freezed,
    Object? zip = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_StoreLocationDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreLocationDTO extends _StoreLocationDTO
    with DiagnosticableTreeMixin {
  const _$_StoreLocationDTO(
      {this.id,
      this.restaurantId,
      @DoubleSerializer() this.lat,
      @JsonKey(name: 'long') @DoubleSerializer() this.lng,
      this.address,
      this.city,
      this.state,
      this.country,
      this.street,
      @StringSerializer() this.zip,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_StoreLocationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_StoreLocationDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? restaurantId;
  @override
  @DoubleSerializer()
  final double? lat;
  @override
  @JsonKey(name: 'long')
  @DoubleSerializer()
  final double? lng;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? street;
  @override
  @StringSerializer()
  final String? zip;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreLocationDTO(id: $id, restaurantId: $restaurantId, lat: $lat, lng: $lng, address: $address, city: $city, state: $state, country: $country, street: $street, zip: $zip, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreLocationDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('restaurantId', restaurantId))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('zip', zip))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreLocationDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.zip, zip) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(restaurantId),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(zip),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$StoreLocationDTOCopyWith<_StoreLocationDTO> get copyWith =>
      __$StoreLocationDTOCopyWithImpl<_StoreLocationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreLocationDTOToJson(this);
  }
}

abstract class _StoreLocationDTO extends StoreLocationDTO {
  const factory _StoreLocationDTO(
      {String? id,
      String? restaurantId,
      @DoubleSerializer() double? lat,
      @JsonKey(name: 'long') @DoubleSerializer() double? lng,
      String? address,
      String? city,
      String? state,
      String? country,
      String? street,
      @StringSerializer() String? zip,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) = _$_StoreLocationDTO;
  const _StoreLocationDTO._() : super._();

  factory _StoreLocationDTO.fromJson(Map<String, dynamic> json) =
      _$_StoreLocationDTO.fromJson;

  @override
  String? get id;
  @override
  String? get restaurantId;
  @override
  @DoubleSerializer()
  double? get lat;
  @override
  @JsonKey(name: 'long')
  @DoubleSerializer()
  double? get lng;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get street;
  @override
  @StringSerializer()
  String? get zip;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$StoreLocationDTOCopyWith<_StoreLocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
