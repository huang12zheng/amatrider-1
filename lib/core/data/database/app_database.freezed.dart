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

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
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
      @JsonKey(includeIfNull: false, name: 'profile_image')
          String? image,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _UserDTO(
      id: id,
      token: token,
      firstName: firstName,
      lastName: lastName,
      fullName: fullName,
      email: email,
      phone: phone,
      password: password,
      oldPassword: oldPassword,
      confirmation: confirmation,
      image: image,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @primaryKey
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
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
  @JsonKey(includeIfNull: false, name: 'profile_image')
  String? get image => throw _privateConstructorUsedError;
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
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
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
      @JsonKey(includeIfNull: false, name: 'profile_image')
          String? image,
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
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? image = freezed,
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
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
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
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
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
      @JsonKey(includeIfNull: false, name: 'profile_image')
          String? image,
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
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? oldPassword = freezed,
    Object? confirmation = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_UserDTO(
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
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
@Entity(tableName: UserDTO.tableName)
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false)
          this.token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          this.firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          this.lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          this.fullName,
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
      @JsonKey(includeIfNull: false, name: 'profile_image')
          this.image,
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

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

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
  @JsonKey(includeIfNull: false, name: 'full_name')
  final String? fullName;
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
  @JsonKey(includeIfNull: false, name: 'profile_image')
  final String? image;
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
    return 'UserDTO(id: $id, token: $token, firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, phone: $phone, password: $password, oldPassword: $oldPassword, confirmation: $confirmation, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.confirmation, confirmation) ||
                const DeepCollectionEquality()
                    .equals(other.confirmation, confirmation)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(confirmation) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@primaryKey
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
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
      @JsonKey(includeIfNull: false, name: 'profile_image')
          String? image,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @primaryKey
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'current_password')
  String? get oldPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'password_confirmation')
  String? get confirmation => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'profile_image')
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
