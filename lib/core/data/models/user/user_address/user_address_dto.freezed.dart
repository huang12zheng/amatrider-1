// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_address_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAddressDTO _$UserAddressDTOFromJson(Map<String, dynamic> json) {
  return _UserAddressDTO.fromJson(json);
}

/// @nodoc
class _$UserAddressDTOTearOff {
  const _$UserAddressDTOTearOff();

  _UserAddressDTO call(
      {String? id,
      @DoubleSerializer() double? lat,
      @DoubleSerializer() double? long,
      String? zip,
      CountryDTO? country,
      String? instructions,
      @JsonKey(name: 'country_id') String? countryId,
      String? alias,
      String? apartment,
      String? street,
      String? city,
      String? landmark,
      String? state,
      String? entrance,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) {
    return _UserAddressDTO(
      id: id,
      lat: lat,
      long: long,
      zip: zip,
      country: country,
      instructions: instructions,
      countryId: countryId,
      alias: alias,
      apartment: apartment,
      street: street,
      city: city,
      landmark: landmark,
      state: state,
      entrance: entrance,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  UserAddressDTO fromJson(Map<String, Object?> json) {
    return UserAddressDTO.fromJson(json);
  }
}

/// @nodoc
const $UserAddressDTO = _$UserAddressDTOTearOff();

/// @nodoc
mixin _$UserAddressDTO {
  String? get id => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get lat => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get long => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  CountryDTO? get country => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  String? get countryId => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get landmark => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get entrance => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressDTOCopyWith<UserAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressDTOCopyWith<$Res> {
  factory $UserAddressDTOCopyWith(
          UserAddressDTO value, $Res Function(UserAddressDTO) then) =
      _$UserAddressDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @DoubleSerializer() double? lat,
      @DoubleSerializer() double? long,
      String? zip,
      CountryDTO? country,
      String? instructions,
      @JsonKey(name: 'country_id') String? countryId,
      String? alias,
      String? apartment,
      String? street,
      String? city,
      String? landmark,
      String? state,
      String? entrance,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});

  $CountryDTOCopyWith<$Res>? get country;
}

/// @nodoc
class _$UserAddressDTOCopyWithImpl<$Res>
    implements $UserAddressDTOCopyWith<$Res> {
  _$UserAddressDTOCopyWithImpl(this._value, this._then);

  final UserAddressDTO _value;
  // ignore: unused_field
  final $Res Function(UserAddressDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? zip = freezed,
    Object? country = freezed,
    Object? instructions = freezed,
    Object? countryId = freezed,
    Object? alias = freezed,
    Object? apartment = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? landmark = freezed,
    Object? state = freezed,
    Object? entrance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDTO?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: landmark == freezed
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
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

  @override
  $CountryDTOCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryDTOCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$UserAddressDTOCopyWith<$Res>
    implements $UserAddressDTOCopyWith<$Res> {
  factory _$UserAddressDTOCopyWith(
          _UserAddressDTO value, $Res Function(_UserAddressDTO) then) =
      __$UserAddressDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @DoubleSerializer() double? lat,
      @DoubleSerializer() double? long,
      String? zip,
      CountryDTO? country,
      String? instructions,
      @JsonKey(name: 'country_id') String? countryId,
      String? alias,
      String? apartment,
      String? street,
      String? city,
      String? landmark,
      String? state,
      String? entrance,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt});

  @override
  $CountryDTOCopyWith<$Res>? get country;
}

/// @nodoc
class __$UserAddressDTOCopyWithImpl<$Res>
    extends _$UserAddressDTOCopyWithImpl<$Res>
    implements _$UserAddressDTOCopyWith<$Res> {
  __$UserAddressDTOCopyWithImpl(
      _UserAddressDTO _value, $Res Function(_UserAddressDTO) _then)
      : super(_value, (v) => _then(v as _UserAddressDTO));

  @override
  _UserAddressDTO get _value => super._value as _UserAddressDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? zip = freezed,
    Object? country = freezed,
    Object? instructions = freezed,
    Object? countryId = freezed,
    Object? alias = freezed,
    Object? apartment = freezed,
    Object? street = freezed,
    Object? city = freezed,
    Object? landmark = freezed,
    Object? state = freezed,
    Object? entrance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_UserAddressDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDTO?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: landmark == freezed
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
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
class _$_UserAddressDTO extends _UserAddressDTO {
  const _$_UserAddressDTO(
      {this.id,
      @DoubleSerializer() this.lat,
      @DoubleSerializer() this.long,
      this.zip,
      this.country,
      this.instructions,
      @JsonKey(name: 'country_id') this.countryId,
      this.alias,
      this.apartment,
      this.street,
      this.city,
      this.landmark,
      this.state,
      this.entrance,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.deletedAt})
      : super._();

  factory _$_UserAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressDTOFromJson(json);

  @override
  final String? id;
  @override
  @DoubleSerializer()
  final double? lat;
  @override
  @DoubleSerializer()
  final double? long;
  @override
  final String? zip;
  @override
  final CountryDTO? country;
  @override
  final String? instructions;
  @override
  @JsonKey(name: 'country_id')
  final String? countryId;
  @override
  final String? alias;
  @override
  final String? apartment;
  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? landmark;
  @override
  final String? state;
  @override
  final String? entrance;
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
  String toString() {
    return 'UserAddressDTO(id: $id, lat: $lat, long: $long, zip: $zip, country: $country, instructions: $instructions, countryId: $countryId, alias: $alias, apartment: $apartment, street: $street, city: $city, landmark: $landmark, state: $state, entrance: $entrance, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAddressDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long) &&
            const DeepCollectionEquality().equals(other.zip, zip) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.apartment, apartment) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.landmark, landmark) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.entrance, entrance) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long),
      const DeepCollectionEquality().hash(zip),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(apartment),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(landmark),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(entrance),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$UserAddressDTOCopyWith<_UserAddressDTO> get copyWith =>
      __$UserAddressDTOCopyWithImpl<_UserAddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressDTOToJson(this);
  }
}

abstract class _UserAddressDTO extends UserAddressDTO {
  const factory _UserAddressDTO(
      {String? id,
      @DoubleSerializer() double? lat,
      @DoubleSerializer() double? long,
      String? zip,
      CountryDTO? country,
      String? instructions,
      @JsonKey(name: 'country_id') String? countryId,
      String? alias,
      String? apartment,
      String? street,
      String? city,
      String? landmark,
      String? state,
      String? entrance,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? deletedAt}) = _$_UserAddressDTO;
  const _UserAddressDTO._() : super._();

  factory _UserAddressDTO.fromJson(Map<String, dynamic> json) =
      _$_UserAddressDTO.fromJson;

  @override
  String? get id;
  @override
  @DoubleSerializer()
  double? get lat;
  @override
  @DoubleSerializer()
  double? get long;
  @override
  String? get zip;
  @override
  CountryDTO? get country;
  @override
  String? get instructions;
  @override
  @JsonKey(name: 'country_id')
  String? get countryId;
  @override
  String? get alias;
  @override
  String? get apartment;
  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get landmark;
  @override
  String? get state;
  @override
  String? get entrance;
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
  _$UserAddressDTOCopyWith<_UserAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
