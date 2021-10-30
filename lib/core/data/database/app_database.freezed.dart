// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of app_database.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RiderDTO _$RiderDTOFromJson(Map<String, dynamic> json) {
  return _RiderDTO.fromJson(json);
}

/// @nodoc
class _$RiderDTOTearOff {
  const _$RiderDTOTearOff();

  _RiderDTO call(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false, name: 'current_password')
          String? oldPassword,
      @JsonKey(includeIfNull: false, name: 'password_confirmation')
          String? confirmation,
      @JsonKey(includeIfNull: false, name: 'image')
          String? image,
      @JsonKey(includeIfNull: false, name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(includeIfNull: false, name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false, name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _RiderDTO(
      id: id,
      token: token,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      password: password,
      oldPassword: oldPassword,
      confirmation: confirmation,
      image: image,
      availability: availability,
      lat: lat,
      lng: lng,
      phoneVerifiedAt: phoneVerifiedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  RiderDTO fromJson(Map<String, Object?> json) {
    return RiderDTO.fromJson(json);
  }
}

/// @nodoc
const $RiderDTO = _$RiderDTOTearOff();

/// @nodoc
mixin _$RiderDTO {
  @primaryKey
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'current_password')
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'password_confirmation')
  String? get confirmation => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'availability')
  @RiderAvailabilitySerializer()
  RiderAvailability? get availability => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'current_latitude')
  @DoubleSerializer()
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'current_longitude')
  @DoubleSerializer()
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'phone_verified_at')
  @TimestampConverter()
  DateTime? get phoneVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiderDTOCopyWith<RiderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderDTOCopyWith<$Res> {
  factory $RiderDTOCopyWith(RiderDTO value, $Res Function(RiderDTO) then) =
      _$RiderDTOCopyWithImpl<$Res>;
  $Res call(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false, name: 'current_password')
          String? oldPassword,
      @JsonKey(includeIfNull: false, name: 'password_confirmation')
          String? confirmation,
      @JsonKey(includeIfNull: false, name: 'image')
          String? image,
      @JsonKey(includeIfNull: false, name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(includeIfNull: false, name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false, name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class _$RiderDTOCopyWithImpl<$Res> implements $RiderDTOCopyWith<$Res> {
  _$RiderDTOCopyWithImpl(this._value, this._then);

  final RiderDTO _value;
  // ignore: unused_field
  final $Res Function(RiderDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: availability == freezed
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RiderAvailability?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      phoneVerifiedAt: phoneVerifiedAt == freezed
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$RiderDTOCopyWith<$Res> implements $RiderDTOCopyWith<$Res> {
  factory _$RiderDTOCopyWith(_RiderDTO value, $Res Function(_RiderDTO) then) =
      __$RiderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false, name: 'current_password')
          String? oldPassword,
      @JsonKey(includeIfNull: false, name: 'password_confirmation')
          String? confirmation,
      @JsonKey(includeIfNull: false, name: 'image')
          String? image,
      @JsonKey(includeIfNull: false, name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(includeIfNull: false, name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false, name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class __$RiderDTOCopyWithImpl<$Res> extends _$RiderDTOCopyWithImpl<$Res>
    implements _$RiderDTOCopyWith<$Res> {
  __$RiderDTOCopyWithImpl(_RiderDTO _value, $Res Function(_RiderDTO) _then)
      : super(_value, (v) => _then(v as _RiderDTO));

  @override
  _RiderDTO get _value => super._value as _RiderDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? image = freezed,
    Object? availability = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? phoneVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_RiderDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmation: confirmation == freezed
          ? _value.confirmation
          : confirmation // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      availability: availability == freezed
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RiderAvailability?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      phoneVerifiedAt: phoneVerifiedAt == freezed
          ? _value.phoneVerifiedAt
          : phoneVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
@Entity(tableName: RiderDTO.tableName)
class _$_RiderDTO extends _RiderDTO {
  const _$_RiderDTO(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false)
          this.token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          this.firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          this.lastName,
      @JsonKey(includeIfNull: false)
          this.email,
      @JsonKey(includeIfNull: false)
          this.phone,
      @JsonKey(includeIfNull: false)
          this.password,
      @JsonKey(includeIfNull: false, name: 'current_password')
          this.oldPassword,
      @JsonKey(includeIfNull: false, name: 'password_confirmation')
          this.confirmation,
      @JsonKey(includeIfNull: false, name: 'image')
          this.image,
      @JsonKey(includeIfNull: false, name: 'availability')
      @RiderAvailabilitySerializer()
          this.availability,
      @JsonKey(includeIfNull: false, name: 'current_latitude')
      @DoubleSerializer()
          this.lat,
      @JsonKey(includeIfNull: false, name: 'current_longitude')
      @DoubleSerializer()
          this.lng,
      @JsonKey(includeIfNull: false, name: 'phone_verified_at')
      @TimestampConverter()
          this.phoneVerifiedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_RiderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RiderDTOFromJson(json);

  @override
  @primaryKey
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? token;
  @override
  @JsonKey(includeIfNull: false, name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(includeIfNull: false, name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? phone;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  @JsonKey(includeIfNull: false, name: 'current_password')
  final String? oldPassword;
  @override
  @JsonKey(includeIfNull: false, name: 'password_confirmation')
  final String? confirmation;
  @override
  @JsonKey(includeIfNull: false, name: 'image')
  final String? image;
  @override
  @JsonKey(includeIfNull: false, name: 'availability')
  @RiderAvailabilitySerializer()
  final RiderAvailability? availability;
  @override
  @JsonKey(includeIfNull: false, name: 'current_latitude')
  @DoubleSerializer()
  final double? lat;
  @override
  @JsonKey(includeIfNull: false, name: 'current_longitude')
  @DoubleSerializer()
  final double? lng;
  @override
  @JsonKey(includeIfNull: false, name: 'phone_verified_at')
  @TimestampConverter()
  final DateTime? phoneVerifiedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'RiderDTO(id: $id, token: $token, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, password: $password, oldPassword: $oldPassword, confirmation: $confirmation, image: $image, availability: $availability, lat: $lat, lng: $lng, phoneVerifiedAt: $phoneVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RiderDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.confirmation, confirmation) ||
                other.confirmation == confirmation) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.phoneVerifiedAt, phoneVerifiedAt) ||
                other.phoneVerifiedAt == phoneVerifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      token,
      firstName,
      lastName,
      email,
      phone,
      password,
      oldPassword,
      confirmation,
      image,
      availability,
      lat,
      lng,
      phoneVerifiedAt,
      createdAt,
      updatedAt,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  _$RiderDTOCopyWith<_RiderDTO> get copyWith =>
      __$RiderDTOCopyWithImpl<_RiderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RiderDTOToJson(this);
  }
}

abstract class _RiderDTO extends RiderDTO {
  const factory _RiderDTO(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false, name: 'current_password')
          String? oldPassword,
      @JsonKey(includeIfNull: false, name: 'password_confirmation')
          String? confirmation,
      @JsonKey(includeIfNull: false, name: 'image')
          String? image,
      @JsonKey(includeIfNull: false, name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(includeIfNull: false, name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(includeIfNull: false, name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(includeIfNull: false, name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_RiderDTO;
  const _RiderDTO._() : super._();

  factory _RiderDTO.fromJson(Map<String, dynamic> json) = _$_RiderDTO.fromJson;

  @override
  @primaryKey
  @JsonKey(includeIfNull: false)
  String? get id;
  @override
  @JsonKey(includeIfNull: false)
  String? get token;
  @override
  @JsonKey(includeIfNull: false, name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(includeIfNull: false, name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(includeIfNull: false)
  String? get email;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone;
  @override
  @JsonKey(includeIfNull: false)
  String? get password;
  @override
  @JsonKey(includeIfNull: false, name: 'current_password')
  String? get oldPassword;
  @override
  @JsonKey(includeIfNull: false, name: 'password_confirmation')
  String? get confirmation;
  @override
  @JsonKey(includeIfNull: false, name: 'image')
  String? get image;
  @override
  @JsonKey(includeIfNull: false, name: 'availability')
  @RiderAvailabilitySerializer()
  RiderAvailability? get availability;
  @override
  @JsonKey(includeIfNull: false, name: 'current_latitude')
  @DoubleSerializer()
  double? get lat;
  @override
  @JsonKey(includeIfNull: false, name: 'current_longitude')
  @DoubleSerializer()
  double? get lng;
  @override
  @JsonKey(includeIfNull: false, name: 'phone_verified_at')
  @TimestampConverter()
  DateTime? get phoneVerifiedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$RiderDTOCopyWith<_RiderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
