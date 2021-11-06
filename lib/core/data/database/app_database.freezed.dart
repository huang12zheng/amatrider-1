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
          String? id,
      String? token,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      String? email,
      String? phone,
      String? password,
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @JsonKey(name: 'image')
          String? image,
      @JsonKey(name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'verification_state')
      @VerificationStatusSerializer()
          ProfileVerificationStatus? verificationStatus,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
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
      avgRating: avgRating,
      verificationStatus: verificationStatus,
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
  String? get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_password')
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String? get confirmation => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'availability')
  @RiderAvailabilitySerializer()
  RiderAvailability? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_latitude')
  @DoubleSerializer()
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_longitude')
  @DoubleSerializer()
  double? get lng => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_verified_at')
  @TimestampConverter()
  DateTime? get phoneVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rating')
  @DoubleSerializer()
  double? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_state')
  @VerificationStatusSerializer()
  ProfileVerificationStatus? get verificationStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
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
          String? id,
      String? token,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      String? email,
      String? phone,
      String? password,
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @JsonKey(name: 'image')
          String? image,
      @JsonKey(name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'verification_state')
      @VerificationStatusSerializer()
          ProfileVerificationStatus? verificationStatus,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
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
    Object? avgRating = freezed,
    Object? verificationStatus = freezed,
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
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
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
          String? id,
      String? token,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      String? email,
      String? phone,
      String? password,
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @JsonKey(name: 'image')
          String? image,
      @JsonKey(name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'verification_state')
      @VerificationStatusSerializer()
          ProfileVerificationStatus? verificationStatus,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
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
    Object? avgRating = freezed,
    Object? verificationStatus = freezed,
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
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus?,
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
          this.id,
      this.token,
      @JsonKey(name: 'first_name')
          this.firstName,
      @JsonKey(name: 'last_name')
          this.lastName,
      this.email,
      this.phone,
      this.password,
      @JsonKey(name: 'current_password')
          this.oldPassword,
      @JsonKey(name: 'password_confirmation')
          this.confirmation,
      @JsonKey(name: 'image')
          this.image,
      @JsonKey(name: 'availability')
      @RiderAvailabilitySerializer()
          this.availability,
      @JsonKey(name: 'current_latitude')
      @DoubleSerializer()
          this.lat,
      @JsonKey(name: 'current_longitude')
      @DoubleSerializer()
          this.lng,
      @JsonKey(name: 'phone_verified_at')
      @TimestampConverter()
          this.phoneVerifiedAt,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          this.avgRating,
      @JsonKey(name: 'verification_state')
      @VerificationStatusSerializer()
          this.verificationStatus,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @JsonKey(name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_RiderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RiderDTOFromJson(json);

  @override
  @primaryKey
  final String? id;
  @override
  final String? token;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  @JsonKey(name: 'current_password')
  final String? oldPassword;
  @override
  @JsonKey(name: 'password_confirmation')
  final String? confirmation;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'availability')
  @RiderAvailabilitySerializer()
  final RiderAvailability? availability;
  @override
  @JsonKey(name: 'current_latitude')
  @DoubleSerializer()
  final double? lat;
  @override
  @JsonKey(name: 'current_longitude')
  @DoubleSerializer()
  final double? lng;
  @override
  @JsonKey(name: 'phone_verified_at')
  @TimestampConverter()
  final DateTime? phoneVerifiedAt;
  @override
  @JsonKey(name: 'average_rating')
  @DoubleSerializer()
  final double? avgRating;
  @override
  @JsonKey(name: 'verification_state')
  @VerificationStatusSerializer()
  final ProfileVerificationStatus? verificationStatus;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'RiderDTO(id: $id, token: $token, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, password: $password, oldPassword: $oldPassword, confirmation: $confirmation, image: $image, availability: $availability, lat: $lat, lng: $lng, phoneVerifiedAt: $phoneVerifiedAt, avgRating: $avgRating, verificationStatus: $verificationStatus, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
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
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @override
  int get hashCode => Object.hashAll([
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
        avgRating,
        verificationStatus,
        createdAt,
        updatedAt,
        deletedAt
      ]);

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
          String? id,
      String? token,
      @JsonKey(name: 'first_name')
          String? firstName,
      @JsonKey(name: 'last_name')
          String? lastName,
      String? email,
      String? phone,
      String? password,
      @JsonKey(name: 'current_password')
          String? oldPassword,
      @JsonKey(name: 'password_confirmation')
          String? confirmation,
      @JsonKey(name: 'image')
          String? image,
      @JsonKey(name: 'availability')
      @RiderAvailabilitySerializer()
          RiderAvailability? availability,
      @JsonKey(name: 'current_latitude')
      @DoubleSerializer()
          double? lat,
      @JsonKey(name: 'current_longitude')
      @DoubleSerializer()
          double? lng,
      @JsonKey(name: 'phone_verified_at')
      @TimestampConverter()
          DateTime? phoneVerifiedAt,
      @JsonKey(name: 'average_rating')
      @DoubleSerializer()
          double? avgRating,
      @JsonKey(name: 'verification_state')
      @VerificationStatusSerializer()
          ProfileVerificationStatus? verificationStatus,
      @JsonKey(name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_RiderDTO;
  const _RiderDTO._() : super._();

  factory _RiderDTO.fromJson(Map<String, dynamic> json) = _$_RiderDTO.fromJson;

  @override
  @primaryKey
  String? get id;
  @override
  String? get token;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  @JsonKey(name: 'current_password')
  String? get oldPassword;
  @override
  @JsonKey(name: 'password_confirmation')
  String? get confirmation;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'availability')
  @RiderAvailabilitySerializer()
  RiderAvailability? get availability;
  @override
  @JsonKey(name: 'current_latitude')
  @DoubleSerializer()
  double? get lat;
  @override
  @JsonKey(name: 'current_longitude')
  @DoubleSerializer()
  double? get lng;
  @override
  @JsonKey(name: 'phone_verified_at')
  @TimestampConverter()
  DateTime? get phoneVerifiedAt;
  @override
  @JsonKey(name: 'average_rating')
  @DoubleSerializer()
  double? get avgRating;
  @override
  @JsonKey(name: 'verification_state')
  @VerificationStatusSerializer()
  ProfileVerificationStatus? get verificationStatus;
  @override
  @JsonKey(name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$RiderDTOCopyWith<_RiderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
