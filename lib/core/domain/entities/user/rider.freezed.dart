// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of rider.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RiderTearOff {
  const _$RiderTearOff();

  _Rider call(
      {required UniqueId<String?> uid,
      required DisplayName firstName,
      required DisplayName lastName,
      required EmailAddress email,
      required Phone phone,
      required Password password,
      required PhotoField photo,
      RiderAvailability availability = RiderAvailability.unavailable,
      required RiderLocation location,
      ProfileVerificationStatus verificationStatus =
          ProfileVerificationStatus.unverified,
      bool phoneVerified = false,
      required BasicTextField<double?> avgRating,
      AuthProvider provider = AuthProvider.regular,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _Rider(
      uid: uid,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      password: password,
      photo: photo,
      availability: availability,
      location: location,
      verificationStatus: verificationStatus,
      phoneVerified: phoneVerified,
      avgRating: avgRating,
      provider: provider,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $Rider = _$RiderTearOff();

/// @nodoc
mixin _$Rider {
  UniqueId<String?> get uid => throw _privateConstructorUsedError;
  DisplayName get firstName => throw _privateConstructorUsedError;
  DisplayName get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  PhotoField get photo => throw _privateConstructorUsedError;
  RiderAvailability get availability => throw _privateConstructorUsedError;
  RiderLocation get location => throw _privateConstructorUsedError;
  ProfileVerificationStatus get verificationStatus =>
      throw _privateConstructorUsedError;
  bool get phoneVerified => throw _privateConstructorUsedError;
  BasicTextField<double?> get avgRating => throw _privateConstructorUsedError;
  AuthProvider get provider => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RiderCopyWith<Rider> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderCopyWith<$Res> {
  factory $RiderCopyWith(Rider value, $Res Function(Rider) then) =
      _$RiderCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> uid,
      DisplayName firstName,
      DisplayName lastName,
      EmailAddress email,
      Phone phone,
      Password password,
      PhotoField photo,
      RiderAvailability availability,
      RiderLocation location,
      ProfileVerificationStatus verificationStatus,
      bool phoneVerified,
      BasicTextField<double?> avgRating,
      AuthProvider provider,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $RiderLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$RiderCopyWithImpl<$Res> implements $RiderCopyWith<$Res> {
  _$RiderCopyWithImpl(this._value, this._then);

  final Rider _value;
  // ignore: unused_field
  final $Res Function(Rider) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? photo = freezed,
    Object? availability = freezed,
    Object? location = freezed,
    Object? verificationStatus = freezed,
    Object? phoneVerified = freezed,
    Object? avgRating = freezed,
    Object? provider = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoField,
      availability: availability == freezed
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RiderAvailability,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus,
      phoneVerified: phoneVerified == freezed
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
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
  $RiderLocationCopyWith<$Res> get location {
    return $RiderLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$RiderCopyWith<$Res> implements $RiderCopyWith<$Res> {
  factory _$RiderCopyWith(_Rider value, $Res Function(_Rider) then) =
      __$RiderCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> uid,
      DisplayName firstName,
      DisplayName lastName,
      EmailAddress email,
      Phone phone,
      Password password,
      PhotoField photo,
      RiderAvailability availability,
      RiderLocation location,
      ProfileVerificationStatus verificationStatus,
      bool phoneVerified,
      BasicTextField<double?> avgRating,
      AuthProvider provider,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $RiderLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$RiderCopyWithImpl<$Res> extends _$RiderCopyWithImpl<$Res>
    implements _$RiderCopyWith<$Res> {
  __$RiderCopyWithImpl(_Rider _value, $Res Function(_Rider) _then)
      : super(_value, (v) => _then(v as _Rider));

  @override
  _Rider get _value => super._value as _Rider;

  @override
  $Res call({
    Object? uid = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? photo = freezed,
    Object? availability = freezed,
    Object? location = freezed,
    Object? verificationStatus = freezed,
    Object? phoneVerified = freezed,
    Object? avgRating = freezed,
    Object? provider = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_Rider(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as PhotoField,
      availability: availability == freezed
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as RiderAvailability,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RiderLocation,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as ProfileVerificationStatus,
      phoneVerified: phoneVerified == freezed
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double?>,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
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

class _$_Rider extends _Rider with DiagnosticableTreeMixin {
  const _$_Rider(
      {required this.uid,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.password,
      required this.photo,
      this.availability = RiderAvailability.unavailable,
      required this.location,
      this.verificationStatus = ProfileVerificationStatus.unverified,
      this.phoneVerified = false,
      required this.avgRating,
      this.provider = AuthProvider.regular,
      this.createdAt,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> uid;
  @override
  final DisplayName firstName;
  @override
  final DisplayName lastName;
  @override
  final EmailAddress email;
  @override
  final Phone phone;
  @override
  final Password password;
  @override
  final PhotoField photo;
  @JsonKey()
  @override
  final RiderAvailability availability;
  @override
  final RiderLocation location;
  @JsonKey()
  @override
  final ProfileVerificationStatus verificationStatus;
  @JsonKey()
  @override
  final bool phoneVerified;
  @override
  final BasicTextField<double?> avgRating;
  @JsonKey()
  @override
  final AuthProvider provider;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rider(uid: $uid, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, password: $password, photo: $photo, availability: $availability, location: $location, verificationStatus: $verificationStatus, phoneVerified: $phoneVerified, avgRating: $avgRating, provider: $provider, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rider'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('availability', availability))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('verificationStatus', verificationStatus))
      ..add(DiagnosticsProperty('phoneVerified', phoneVerified))
      ..add(DiagnosticsProperty('avgRating', avgRating))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rider &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality()
                .equals(other.availability, availability) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.verificationStatus, verificationStatus) &&
            const DeepCollectionEquality()
                .equals(other.phoneVerified, phoneVerified) &&
            const DeepCollectionEquality().equals(other.avgRating, avgRating) &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(availability),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(verificationStatus),
      const DeepCollectionEquality().hash(phoneVerified),
      const DeepCollectionEquality().hash(avgRating),
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  _$RiderCopyWith<_Rider> get copyWith =>
      __$RiderCopyWithImpl<_Rider>(this, _$identity);
}

abstract class _Rider extends Rider {
  const factory _Rider(
      {required UniqueId<String?> uid,
      required DisplayName firstName,
      required DisplayName lastName,
      required EmailAddress email,
      required Phone phone,
      required Password password,
      required PhotoField photo,
      RiderAvailability availability,
      required RiderLocation location,
      ProfileVerificationStatus verificationStatus,
      bool phoneVerified,
      required BasicTextField<double?> avgRating,
      AuthProvider provider,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_Rider;
  const _Rider._() : super._();

  @override
  UniqueId<String?> get uid;
  @override
  DisplayName get firstName;
  @override
  DisplayName get lastName;
  @override
  EmailAddress get email;
  @override
  Phone get phone;
  @override
  Password get password;
  @override
  PhotoField get photo;
  @override
  RiderAvailability get availability;
  @override
  RiderLocation get location;
  @override
  ProfileVerificationStatus get verificationStatus;
  @override
  bool get phoneVerified;
  @override
  BasicTextField<double?> get avgRating;
  @override
  AuthProvider get provider;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$RiderCopyWith<_Rider> get copyWith => throw _privateConstructorUsedError;
}
